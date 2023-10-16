import {
  Body,
  Controller,
  Delete,
  Get,
  NotFoundException,
  Param,
  Patch,
  Post,
} from '@nestjs/common';
import { CreateUserDto } from './dto/create-user.dto';
import { UsersService } from './users.service';
import { RegisteredUsers } from './entities/RegisteredUsers.entity';
import { UpdateUserDto } from './dto/update-user.dto';
import { PatientService } from './patient/patient.service';
import { Patient } from './patient/entities/patient.entity';
import { CreatePatientDto } from './patient/dto/create-patient.dto';
import { Professional } from './professional/entities/professional.entity';
import { CreateProfessionalDto } from './professional/dto/create-professional.dto';
import { ProfessionalService } from './professional/professional.service';

@Controller('users')
export class UserController {
  constructor(
    private readonly usersService: UsersService,
    private readonly patientService: PatientService,
    private readonly professionalService: ProfessionalService,
  ) {}

  @Get('all')
  async findAll(): Promise<RegisteredUsers[]> {
    return this.usersService.findAll();
  }

  /*@Get('confirmations')
  async getAllUserWithConfirmations(): Promise<RegisteredUsers[]> {
    return this.usersService.getAllUserWithConfirmations();
  }

   */

  /* @Get(':user_id')
  async getOneUserWithConfirmationsById(
    @Param('user_id') id: number,
  ): Promise<RegisteredUsers> {
    return this.usersService.getOneUserWithConfirmationsById(id);
  }

  */

  @Get(':email')
  async findOne(@Param('email') email: string): Promise<RegisteredUsers> {
    return this.usersService.findOne(email);
  }

  @Post('create')
  async create(@Body() createUserDto: CreateUserDto): Promise<RegisteredUsers> {
    return this.usersService.create(createUserDto);
  }

  @Patch(':id')
  async update(@Param('id') id: number, @Body() updateUserDto: UpdateUserDto) {
    const updatedUser = await this.usersService.update(id, updateUserDto);
    return updatedUser;
  }

  @Delete(':id')
  async remove(@Param('id') id: number) {
    await this.usersService.remove(id);
    return { message: 'Usuário removido com sucesso' };
  }

  //Paciente
  @Patch('patient/deact/:id')
  async deactivatePatient(PatientId: string) {
    const patient = await this.patientService.findByCode(PatientId);
    if (!patient) throw new NotFoundException('Paciente não encontrado');
    patient.isActive = false;
    await this.patientService.save(patient);
    return patient;
  }

  @Get('patient/date-of-birth/:dateOfBirth')
  async findPatientByDateOfBirth(
    @Param('dateOfBirth') dateOfBirth: string,
  ): Promise<Patient[]> {
    try {
      return await this.patientService.findByDateOfBirth(dateOfBirth);
    } catch (error) {
      throw new NotFoundException(error.message);
    }
  }
  @Get('patient/cpf/:cpf')
  async findPatientByCPF(@Param('cpf') cpf: string): Promise<Patient> {
    try {
      return await this.patientService.findByCPF(cpf);
    } catch (error) {
      throw new NotFoundException(error.message);
    }
  }

  @Get('patient/name/:name')
  async findPatientByName(@Param('name') name: string): Promise<Patient[]> {
    try {
      return await this.patientService.findByName(name);
    } catch (error) {
      throw new NotFoundException(error.message);
    }
  }

  @Get('patient/cgm/:cgm')
  async findPatientByCGM(@Param('cgm') cgm: string): Promise<Patient> {
    try {
      return await this.patientService.findByCGM(cgm);
    } catch (error) {
      throw new NotFoundException(error.message);
    }
  }

  @Get('patient/card-sus/:cartaosus')
  async findPatientByCardSus(
    @Param('cartaosus') cartaosus: string,
  ): Promise<Patient> {
    try {
      return await this.patientService.findByCardSus(cartaosus);
    } catch (error) {
      throw new NotFoundException(error.message);
    }
  }

  @Post('patient/create')
  async createPatient(
    @Body() createPatientDto: CreatePatientDto,
  ): Promise<Patient> {
    return await this.patientService.createPatient(createPatientDto);
  }

  @Get('patient/code/:codigo')
  async findPatientByCode(@Param('codigo') codigo: string): Promise<Patient> {
    try {
      return await this.patientService.findByCode(codigo);
    } catch (error) {
      throw new NotFoundException(error.message);
    }
  }

  @Get('/patient/all')
  async findAllPatient(): Promise<Patient[]> {
    try {
      return await this.patientService.findAll();
    } catch (error) {
      throw new NotFoundException(error.message);
    }
  }

  @Post('/professional/create')
  async createProfessional(
    @Body() createProfessionalDto: CreateProfessionalDto,
  ): Promise<Professional> {
    return await this.professionalService.createProfessional(
      createProfessionalDto,
    );
  }

  @Get('/professional/all')
  async getAllProfessionals() {
    try {
      return await this.professionalService.getAllProfessionals();
    } catch (error) {
      throw new NotFoundException(error.message);
    }
  }
}
