import {
  ConflictException,
  Injectable,
  InternalServerErrorException,
  NotFoundException,
} from '@nestjs/common';
import { CreateUserDto } from './dto/create-user.dto';
import { UpdateUserDto } from './dto/update-user.dto';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { RegisteredUsers } from './entities/RegisteredUsers.entity';
import * as bcrypt from 'bcryptjs';
import { Professional } from './professional/entities/professional.entity';
import { Patient } from './patient/entities/patient.entity';

@Injectable()
export class UsersService {
  constructor(
    @InjectRepository(RegisteredUsers)
    private readonly userRepository: Repository<RegisteredUsers>,
    @InjectRepository(Professional)
    private professionalRepository: Repository<Professional>,
    @InjectRepository(Patient)
    private patientRepository: Repository<Patient>,
  ) {}

  async create(createUserDto: CreateUserDto): Promise<RegisteredUsers> {
    const { funcao_id, email, password } = createUserDto;

    try {
      const hashedPassword = await this.hashPassword(password);
      const funcao = await this.getFuncaoById(funcao_id);
      const objId = (): string => {
        if (funcao instanceof Professional) {
          return funcao.cod.toString();
        } else if (funcao instanceof Patient) {
          return funcao.codigo;
        }
      };
      const user = this.userRepository.create({
        email,
        password: hashedPassword,
        funcao_id: objId(),
      });

      await this.userRepository.save(user);

      return user;
    } catch (error) {
      if (error.code === '23505') {
        // Código de erro para violação de chave única (Unique Constraint Violation)
        throw new ConflictException('O email fornecido já está em uso');
      } else {
        throw new InternalServerErrorException('Falha ao criar o usuário');
      }
    }
  }

  private async getFuncaoById(funcaoId: string): Promise<any> {
    const containsOnlyNumbers = (str: string): boolean => {
      const regex = /^[0-9]+$/;
      return regex.test(str);
    };

    if (containsOnlyNumbers(funcaoId)) {
      const professional = await this.professionalRepository.findOne({
        where: { cod: parseInt(funcaoId, 10) },
      });
      if (professional) {
        return professional;
      }
    }
    const patient = await this.patientRepository.findOne({
      where: { codigo: funcaoId },
    });
    if (patient) {
      return patient;
    }

    throw new NotFoundException('Função não encontrada');
  }

  async findAll(): Promise<RegisteredUsers[]> {
    /*
    try {
      return this.userRepository.find();
    } catch (error) {
      throw new InternalServerErrorException('Falha ao buscar os usuários');
    }
     */
    try {
      return this.userRepository
        .createQueryBuilder('registered_users')
        .leftJoinAndSelect('registered_users.confirmations', 'confirmations')
        .addSelect(
          'CASE WHEN registered_users.funcao_id IS NOT NULL THEN "paciente" ELSE "profissional" END',
          'funcao',
        )
        .leftJoinAndMapOne(
          'registered_users.funcao',
          'paciente',
          'paciente',
          'registered_users.funcao_id = paciente.CODIGO',
          { funcao: 'paciente' },
        )
        .leftJoinAndMapOne(
          'registered_users.funcao',
          'profissional',
          'profissional',
          'registered_users.funcao_id = profissional.cod',
          { funcao: 'profissional' },
        )
        .getMany();
    } catch (error) {
      throw new InternalServerErrorException('Falha ao buscar os usuários');
    }
  }

  async findOne(email: string): Promise<RegisteredUsers | undefined> {
    try {
      const user = await this.userRepository.findOne({ where: { email } });
      if (!user) {
        throw new NotFoundException('Usuário não encontrado');
      }
      return user;
    } catch (error) {
      throw new InternalServerErrorException('Falha ao buscar o usuário');
    }
  }

  async findById(id: number): Promise<RegisteredUsers | undefined> {
    try {
      const user = await this.userRepository.findOne({ where: { id } });
      if (!user) {
        throw new NotFoundException('Usuário não encontrado');
      }
      return user;
    } catch (error) {
      throw new InternalServerErrorException('Falha ao buscar o usuário');
    }
  }

  async update(
    id: number,
    updateUserDto: UpdateUserDto,
  ): Promise<RegisteredUsers> {
    const { funcao_id, email, password } = updateUserDto;

    const user = await this.userRepository.findOne({ where: { id } });

    if (!user) {
      throw new NotFoundException('Usuário não encontrado');
    }

    // Atualiza as propriedades do usuário com os dados fornecidos
    if (email) {
      user.email = email;
    }
    //trocar através do email
    if (password) {
      const hashedPassword = await this.hashPassword(password);
      user.password = hashedPassword;
    }

    //attach func to user
    const professional = await this.professionalRepository.findOne({
      where: { cod: parseInt(funcao_id, 10) },
    });
    if (professional) {
      user.funcao_id = funcao_id;
    }

    const patient = await this.patientRepository.findOne({
      where: { codigo: funcao_id },
    });
    if (patient) {
      user.funcao_id = funcao_id;
    }

    try {
      await this.userRepository.save(user);
      return user;
    } catch (error) {
      throw new InternalServerErrorException('Falha ao atualizar o usuário');
    }
  }

  async remove(id: number): Promise<void> {
    const user = await this.userRepository.findOne({ where: { id } });

    if (!user) {
      throw new NotFoundException('Usuário não encontrado');
    }

    try {
      await this.userRepository.remove(user);
    } catch (error) {
      throw new InternalServerErrorException('Falha ao remover o usuário');
    }
  }

  hashPassword(password: string) {
    const hash = bcrypt.hash(password, 10);
    return hash;
  }

  async getOneUserWithConfirmationsById(id: number): Promise<RegisteredUsers> {
    const user = await this.userRepository.findOne({
      where: { id },
      relations: ['confirmations'],
    });

    if (!user) {
      throw new NotFoundException('Usuário não encontrado');
    }

    return user;
  }

  async getAllUserWithConfirmations(): Promise<RegisteredUsers[]> {
    return this.userRepository
      .createQueryBuilder('user')
      .leftJoinAndSelect('user.confirmations', 'confirmation')
      .getMany();
  }
}
