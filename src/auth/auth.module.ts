import { Module } from '@nestjs/common';
import { JwtModule, JwtService } from '@nestjs/jwt';
import { AuthService } from '../users/auth.service';
import { AuthController } from '../users/auth.controller';
import { UsersModule } from '../users/users.module';
import { TypeOrmModule } from '@nestjs/typeorm';
import { RegisteredUsers } from '../users/entities/RegisteredUsers.entity';
import { Repository } from 'typeorm';
import { UsersService } from 'src/users/users.service';

@Module({
  imports: [
    TypeOrmModule.forFeature([RegisteredUsers]),
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
