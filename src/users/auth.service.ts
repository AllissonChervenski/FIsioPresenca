import { Injectable } from '@nestjs/common';
import { JwtService } from '@nestjs/jwt';
import { UsersService } from '../users/users.service';
import { RegisteredUsers } from './entities/RegisteredUsers.entity';
import * as bcrypt from 'bcryptjs';

@Injectable()
export class AuthService {
  constructor(
    private readonly usersService: UsersService,
    private readonly jwtService: JwtService,
  ) {}

  async validateUser(
    email: string,
    password: string,
  ): Promise<RegisteredUsers | null> {
    const user = await this.usersService.findOne(email);
    if (!user) {
      return null;
    }

    if (!(await bcrypt.compare(password, user.password))) {
      return null;
    }
    return user;
  }

  generateAccessToken(user: RegisteredUsers): string {
    const payload = { email: user.email, sub: user.id };
    return this.jwtService.sign(payload);
  }

  hashPassword(password: string) {
    return this.usersService.hashPassword(password);
  }

  async verifyToken(token: string) {
    const decoded = this.jwtService.verify(token);
    const user = await this.usersService.findById(decoded.sub);
    return user;
  }
}
