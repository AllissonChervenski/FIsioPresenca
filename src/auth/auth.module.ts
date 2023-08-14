import { Module } from '@nestjs/common';
import { JwtModule, JwtService } from '@nestjs/jwt';
import { JwtStrategy } from './jwt.strategy';
import { AuthService } from './auth.service';
import { AuthController } from './auth.controller';
import { UsersModule } from '../users/users.module';
import { TypeOrmModule } from '@nestjs/typeorm';
import { User } from 'src/users/entities/user.entity';
import { Repository } from 'typeorm';
import { UsersService } from 'src/users/users.service';

@Module({
  imports: [
    TypeOrmModule.forFeature([User]),
    JwtModule.register({
    secret: 'mysecretkey', // chave secreta para assinar o token
    signOptions: { expiresIn: '1h' }, // opções de expiração do token
  }),
  ],
  providers: [AuthService, JwtService],
  controllers: [AuthController],
   // Exporte o AuthService para ser usado em outros módulos
})
export class AuthModule {}