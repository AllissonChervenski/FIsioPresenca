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
      host: '172.18.0.2',
      port: 3306,
      username: 'user',
      password: 'user',
      database: 'cerestdb',
      entities: [RegisteredUsers, Confirmation, Patient, Professional],
      synchronize: true,
      extra: {
        poolSize: 20,
        connectionTimeoutMillis: 10000,
        query_timeout: 10000,
        statement_timeout: 10000,
      }, // 5 seconds
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
