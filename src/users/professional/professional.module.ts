import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { Professional } from './entities/professional.entity';
import { ProfessionalService } from './professional.service';

@Module({
  imports: [TypeOrmModule.forFeature([Professional])],
  providers: [ProfessionalService],
})
export class ProfessionalModule {}
