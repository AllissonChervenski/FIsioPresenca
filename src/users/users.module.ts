import { Module } from '@nestjs/common';
import { UsersService } from './users.service';
import { UserController } from './users.controller';
import { RegisteredUsers } from './entities/RegisteredUsers.entity';
import { AuthService } from './auth.service';
import { JwtStrategy } from './jwt.strategy';
import { AuthController } from './auth.controller';
import { TypeOrmModule } from '@nestjs/typeorm';
import { JwtModule } from '@nestjs/jwt';
import { ProfessionalModule } from './professional/professional.module';
import { Repository } from 'typeorm';
import { Professional } from './professional/entities/professional.entity';
import { Patient } from './patient/entities/patient.entity';
import { PatientModule } from './patient/patient.module';
import { PatientService } from './patient/patient.service';
import { ProfessionalService } from './professional/professional.service';


@Module({
  imports: [
    TypeOrmModule.forFeature([RegisteredUsers]),
    JwtModule.register({
      secret: 'mysecretkey', // chave secreta para assinar o token
      signOptions: { expiresIn: '1h' }, // opções de expiração do token
    }),
    TypeOrmModule.forFeature([Professional]), // Incluir o módulo ProfessionalModule aqui
    Repository,
    ProfessionalModule,
    TypeOrmModule.forFeature([Patient]), // Incluir o módulo ProfessionalModule aqui
    Repository,
    PatientModule,
  ],
  controllers: [UserController, AuthController],
  providers: [
    UsersService,
    PatientService,
    ProfessionalService,
    AuthService,
    JwtStrategy,
    Repository,
  ],
  exports: [UsersService],
})
export class UsersModule {}
