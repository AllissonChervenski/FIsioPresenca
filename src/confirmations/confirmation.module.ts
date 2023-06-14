import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { ConfirmationController } from './confirmation.controller';
import { ConfirmationService } from './confirmation.service';
import { Confirmation } from './entities/confirmation.entity';
import { RegisteredUsers } from 'src/users/entities/RegisteredUsers.entity';
import { Repository } from 'typeorm';
import { UsersService } from 'src/users/users.service';

@Module({
  imports: [
    TypeOrmModule.forFeature([Confirmation, RegisteredUsers, Repository]),
  ],
  controllers: [ConfirmationController],
  providers: [ConfirmationService, UsersService],
})
export class ConfirmationModule {}
