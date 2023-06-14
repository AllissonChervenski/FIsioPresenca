import {
  ExecutionContext,
  Injectable,
  UnauthorizedException,
} from '@nestjs/common';
import { PassportStrategy } from '@nestjs/passport';
import { ExtractJwt, Strategy } from 'passport-jwt';
import { AuthService } from './auth.service';
import { RegisteredUsers } from './entities/RegisteredUsers.entity';
import { Request } from 'express';

@Injectable()
export class JwtStrategy extends PassportStrategy(Strategy) {
  constructor(private readonly authService: AuthService) {
    super({
      jwtFromRequest: ExtractJwt.fromAuthHeaderAsBearerToken(),
      secretOrKey: 'mysecretkey',
      passReqToCallback: true,
    });
  }

  async validate(req: Request, payload: any): Promise<RegisteredUsers> {
    const rawToken = req.headers['authorization'];
    let user = null;
    if (rawToken) {
      const token = rawToken.split(' ')[1];
      user = await this.authService.verifyToken(token);
    }
    if (!user) {
      throw new UnauthorizedException();
    }
    return user;
  }
}
