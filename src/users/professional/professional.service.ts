import { Injectable, NotFoundException } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { Professional } from './entities/professional.entity';
import { CreateProfessionalDto } from './dto/create-professional.dto';

@Injectable()
export class ProfessionalService {
  constructor(
    @InjectRepository(Professional)
    private readonly professionalRepository: Repository<Professional>,
  ) {}

  async createProfessional(
    createProfessionalDto: CreateProfessionalDto,
  ): Promise<Professional> {
    const professional = this.professionalRepository.create(
      createProfessionalDto,
    );
    return this.professionalRepository.save(professional);
  }

  async getProfessionalById(cod: number): Promise<Professional> {
    const professional = await this.professionalRepository.findOne({
      where: { cod },
    });
    if (!professional) {
      throw new NotFoundException('Profissional não encontrado');
    }
    return professional;
  }

  async getAllProfessionals(): Promise<Professional[]> {
    return this.professionalRepository.find();
  }

  async updateProfessional(
    id: number,
    createProfessionalDto: CreateProfessionalDto,
  ): Promise<Professional> {
    const professional = await this.getProfessionalById(id);
    professional.nome = createProfessionalDto.nome;
    professional.cbo = createProfessionalDto.cbo;
    professional.codigo = createProfessionalDto.codigo;
    professional.descricao = createProfessionalDto.descricao;
    return this.professionalRepository.save(professional);
  }

  async deleteProfessional(id: number): Promise<void> {
    const professional = await this.getProfessionalById(id);
    await this.professionalRepository.remove(professional);
  }
}
