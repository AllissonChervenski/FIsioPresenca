import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { ConfirmationController } from './confirmation.controller';
import { ConfirmationService } from './confirmation.service';
import { Confirmation } from './entities/confirmation.entity';
import { Repository } from 'typeorm';
import { Professional } from '../users/professional/entities/professional.entity';
import { Patient } from '../users/patient/entities/patient.entity';

@Module({
  imports: [
    TypeOrmModule.forFeature([Confirmation, Repository, Professional, Patient]),
  ],
  controllers: [ConfirmationController],
  providers: [ConfirmationService, Repository, Professional, Patient],
})
export class ConfirmationModule {}
