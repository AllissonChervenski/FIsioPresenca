import {
  ConflictException,
  ForbiddenException,
  Injectable,
  InternalServerErrorException,
  NotFoundException,
} from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { Confirmation } from './entities/confirmation.entity';
import { CreateConfirmationDto } from './dto/create-confirmation.dto';
import {
  RegisteredUsers,
  UserRoles,
} from '../users/entities/RegisteredUsers.entity';

@Injectable()
export class ConfirmationService {
  constructor(
    @InjectRepository(Confirmation)
    private readonly confirmationRepository: Repository<Confirmation>,
    @InjectRepository(RegisteredUsers)
    private readonly userRepository: Repository<RegisteredUsers>,
  ) {}

  async createConfirmation(
    createConfirmationDto: CreateConfirmationDto,
  ): Promise<Confirmation> {
    try {
      const { user_id, ...confirmationData } = createConfirmationDto;
      const id = user_id;
      const user = await this.userRepository.findOne({ where: { id } });

      if (!user) {
        throw new NotFoundException('Usuário não encontrado');
      }

      const confirmation = this.confirmationRepository.create({
        ...confirmationData,
        users: [user], // Associa o objeto User à propriedade 'users' da entidade Confirmation
      });

      const createdConfirmation = await this.confirmationRepository.save(
        confirmation,
      );
      return createdConfirmation;
    } catch (error) {
      if (error.code === '23505') {
        // Código de erro para violação de chave única (Unique Constraint Violation)
        throw new ConflictException('A confirmação já existe');
      } else {
        throw new InternalServerErrorException('Falha ao criar confirmação');
      }
    }
  }

  async getConfirmationById(id: number): Promise<Confirmation> {
    try {
      const confirmation = await this.confirmationRepository.findOne({
        where: { id },
      });
      if (!confirmation) {
        throw new NotFoundException('Confirmação não encontrada');
      }
      return confirmation;
    } catch (error) {
      throw new InternalServerErrorException('Falha ao buscar as confirmações');
    }
  }

  async getAllConfirmations(): Promise<Confirmation[]> {
    try {
      return this.confirmationRepository.find();
    } catch (error) {
      throw new InternalServerErrorException('Falha ao buscar as confirmações');
    }
  }

  async updateConfirmation(
    id: number,
    updateConfirmationDto: CreateConfirmationDto,
  ): Promise<Confirmation> {
    const confirmation = await this.getConfirmationById(id);
    if (!confirmation) {
      // Lógica de tratamento caso a confirmação não seja encontrada
      throw new NotFoundException('Confirmação não encontrada');
    }

    try {
      if (
        updateConfirmationDto.appointmenttime >= confirmation.appointmenttime
      ) {
        throw new ForbiddenException(
          'Não é possível atualizar a confirmação após a data agendada',
        );
      }
      const updatedConfirmation = Object.assign(
        confirmation,
        updateConfirmationDto,
      );
      return this.confirmationRepository.save(updatedConfirmation);
    } catch (error) {
      // Lógica de tratamento de erro durante a atualização da confirmação
      throw new InternalServerErrorException(
        'A atualização da confirmação falhou',
      );
    }
  }

  async deleteConfirmation(id: number): Promise<void> {
    try {
      const confirmation = await this.confirmationRepository.findOne({
        where: { id },
      });
      if (!confirmation) {
        throw new NotFoundException('Confirmação não encontrada');
      }
      const currentTime = new Date();
      const timeDifference =
        confirmation.appointmenttime.getTime() - currentTime.getTime();
      const minutesDifference = Math.floor(timeDifference / 1000 / 60);
      if (minutesDifference < 30) {
        throw new ForbiddenException(
          'Não é possível cancelar a confirmação com menos de 30 minutos de antecedência',
        );
      }
    } catch (error) {
      throw new InternalServerErrorException('Falha em deletar a confirmação');
    }
  }
}
