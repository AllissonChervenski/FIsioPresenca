import { Controller, Get, Param, NotFoundException } from '@nestjs/common';
import { PatientService } from './patient.service';
import { Patient } from './entities/patient.entity';
import { ApiTags } from '@nestjs/swagger';

@ApiTags('paciente')
@Controller('paciente')
export class PatientController {
  constructor(private readonly patientService: PatientService) {}

  @Get('code/:codigo')
  async findByCode(@Param('codigo') codigo: string): Promise<Patient> {
    try {
      return await this.patientService.findByCode(codigo);
    } catch (error) {
      throw new NotFoundException(error.message);
    }
  }

  @Get('name/:name')
  async findByName(@Param('name') name: string): Promise<Patient[]> {
    try {
      return await this.patientService.findByName(name);
    } catch (error) {
      throw new NotFoundException(error.message);
    }
  }

  @Get('date-of-birth/:dateOfBirth')
  async findByDateOfBirth(
    @Param('dateOfBirth') dateOfBirth: string,
  ): Promise<Patient[]> {
    try {
      return await this.patientService.findByDateOfBirth(dateOfBirth);
    } catch (error) {
      throw new NotFoundException(error.message);
    }
  }

  @Get('cpf/:cpf')
  async findByCPF(@Param('cpf') cpf: string): Promise<Patient> {
    try {
      return await this.patientService.findByCPF(cpf);
    } catch (error) {
      throw new NotFoundException(error.message);
    }
  }

  @Get('cgm/:cgm')
  async findByCGM(@Param('cgm') cgm: string): Promise<Patient> {
    try {
      return await this.patientService.findByCGM(cgm);
    } catch (error) {
      throw new NotFoundException(error.message);
    }
  }

  @Get('card-sus/:cartaosus')
  async findByCardSus(@Param('cartaosus') cartaosus: string): Promise<Patient> {
    try {
      return await this.patientService.findByCardSus(cartaosus);
    } catch (error) {
      throw new NotFoundException(error.message);
    }
  }
}
