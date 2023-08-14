import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { UsersModule } from '../users/users.module';
import { TypeOrmModule } from '@nestjs/typeorm';
import { RegisteredUsers } from 'src/users/entities/RegisteredUsers.entity';
import { ConfirmationModule } from 'src/confirmations/confirmation.module';
import { Confirmation } from 'src/confirmations/entities/confirmation.entity';
import { Patient } from '../users/patient/entities/patient.entity';
import { PatientModule } from 'src/users/patient/patient.module';
import { Professional } from '../users/professional/entities/professional.entity';
import { ProfessionalModule } from '../users/professional/professional.module';

@Module({
  imports: [
    TypeOrmModule.forRoot({
      type: 'mysql',
      host: 'localhost',
      port: 3307,
      username: 'user',
      password: 'user',
      database: 'cerestdb',
      entities: [RegisteredUsers, Confirmation, Patient, Professional],
      synchronize: false,
    }),
    UsersModule,
    ConfirmationModule,
    PatientModule,
    ProfessionalModule,
  ],
  controllers: [AppController],
  providers: [AppService],
})
export class AppModule {}
