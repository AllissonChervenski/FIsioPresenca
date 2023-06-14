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

@Injectable()
export class UsersService {
  constructor(
    @InjectRepository(RegisteredUsers)
    private readonly userRepository: Repository<RegisteredUsers>,
  ) {}

  async create(createUserDto: CreateUserDto): Promise<RegisteredUsers> {
    const { email, password } = createUserDto;

    try {
      const hashedPassword = await this.hashPassword(password);

      const user = this.userRepository.create({
        email,
        password: hashedPassword,
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

  async findAll(): Promise<RegisteredUsers[]> {
    try {
      return this.userRepository.find();
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
    const { email, password } = updateUserDto;

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
