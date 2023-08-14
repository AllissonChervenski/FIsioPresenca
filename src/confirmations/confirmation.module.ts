import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { ConfirmationController } from './confirmation.controller';
import { ConfirmationService } from './confirmation.service';
import { Confirmation } from './entities/confirmation.entity';
import { RegisteredUsers } from 'src/users/entities/RegisteredUsers.entity';
import { Repository } from 'typeorm';
import { UsersService } from 'src/users/users.service';
import { Professional } from '../users/professional/entities/professional.entity';
import { Patient } from '../users/patient/entities/patient.entity';

@Module({
  imports: [
    TypeOrmModule.forFeature([
      Confirmation,
      RegisteredUsers,
      Repository,
      Professional,
      Patient,
    ]),
  ],
  controllers: [ConfirmationController],
  providers: [
    ConfirmationService,
    UsersService,
    Repository,
    Professional,
    Patient,
  ],
})
export class ConfirmationModule {}
