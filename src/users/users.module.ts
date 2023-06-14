import { Module } from '@nestjs/common';
import { UsersService } from './users.service';
import { UserController } from './users.controller';
import { Repository } from 'typeorm';
import { RegisteredUsers } from './entities/RegisteredUsers.entity';
import { AuthService } from './auth.service';
import { JwtStrategy } from './jwt.strategy';
import { AuthController } from './auth.controller';
import { TypeOrmModule } from '@nestjs/typeorm';
import { JwtModule } from '@nestjs/jwt';

@Module({
  imports: [
    TypeOrmModule.forFeature([RegisteredUsers]),
    JwtModule.register({
      secret: 'mysecretkey', // chave secreta para assinar o token
      signOptions: { expiresIn: '1h' }, // opções de expiração do token
    }),
  ],
  controllers: [UserController, AuthController],
  providers: [UsersService, AuthService, JwtStrategy],
  exports: [UsersService],
})
export class UsersModule {}
