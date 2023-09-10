import { Injectable, NotFoundException } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { ILike, Repository } from 'typeorm';
import { Patient } from './entities/patient.entity';
import { CreatePatientDto } from './dto/create-patient.dto';
import { UpdatePatientDto } from './dto/update-patient.dto';

@Injectable()
export class PatientService {
  constructor(
    @InjectRepository(Patient)
    private readonly patientRepository: Repository<Patient>,
  ) {}

  async createPatient(createPatientDto: CreatePatientDto): Promise<Patient> {
    const {
      nome,
      datanascimento,
      cartaosus,
      telefone,
      telefone2,
      endereco,
      telefone3,
      cgm,
      cor,
      sexo,
      ocupacao,
      SIST,
      cpf,
      naturalidade,
      mae,
      profissao,
      obs,
    } = createPatientDto;

    const firstLetter = nome.charAt(0).toUpperCase();
    const year = new Date().getFullYear().toString().slice(-2);
    const codeNumber =
      (await this.getLastPatientNumberWithSameFirstLetter(firstLetter)) + 1;

    const codigo = `${firstLetter}${codeNumber
      .toString()
      .padStart(4, '0')}/${year}`;

    const patient = this.patientRepository.create({
      codigo,
      nome,
      datanascimento,
      cartaosus,
      telefone,
      telefone2,
      endereco,
      telefone3,
      cgm,
      cor,
      sexo,
      ocupacao,
      SIST,
      cpf,
      naturalidade,
      mae,
      profissao,
      obs,
    });

    return this.patientRepository.save(patient);
  }

  async findAll(){
    return this.patientRepository.find();
  }

  async getLastPatientNumberWithSameFirstLetter(
    firstLetter: string,
  ): Promise<number> {
    const lastPatient = await this.patientRepository.findOne({
      where: { nome: ILike(`${firstLetter}%`) },
      order: { codigo: 'DESC' },
    });

    if (lastPatient) {
      const codeNumber = parseInt(lastPatient.codigo.slice(1, 5), 10);
      return codeNumber;
    } else {
      return 0;
    }
  }

  async findByCode(codigo: string): Promise<Patient> {
    const patient = await this.patientRepository.findOne({ where: { codigo } });
    if (!patient) {
      throw new NotFoundException('Patient not found');
    }
    return patient;
  }

  async findByName(nome: string): Promise<Patient[]> {
    const users = await this.patientRepository.find({ where: { nome } });

    if (users.length === 0) {
      throw new NotFoundException('Paciente não encontrado');
    }

    return users;
  }

  async findByDateOfBirth(datanascimento: string): Promise<Patient[]> {
    const patients = await this.patientRepository.find({
      where: { datanascimento },
    });
    return patients;
  }

  async findByCPF(cpf: string): Promise<Patient> {
    const patient = await this.patientRepository.findOne({ where: { cpf } });
    if (!patient) {
      throw new NotFoundException('Patient not found');
    }
    return patient;
  }

  async findByCGM(cgm: string): Promise<Patient> {
    const patient = await this.patientRepository.findOne({ where: { cgm } });
    if (!patient) {
      throw new NotFoundException('Patient not found');
    }
    return patient;
  }

  async findByCardSus(cartaosus: string): Promise<Patient> {
    const patient = await this.patientRepository.findOne({
      where: { cartaosus },
    });
    if (!patient) {
      throw new NotFoundException('Patient not found');
    }
    return patient;
  }

  async findPatientsByBirthDate(date: string): Promise<Patient[]> {
    const patients = await this.patientRepository.find({
      where: {
        datanascimento: date,
      },
    });

    if (!patients || patients.length === 0) {
      throw new NotFoundException(
        'Nenhum paciente encontrado com a data de nascimento fornecida.',
      );
    }

    return patients;
  }

  async findPatientsByPhone(phone: string): Promise<Patient[]> {
    const patients = await this.patientRepository.find({
      where: {
        telefone: phone,
      },
    });

    if (!patients || patients.length === 0) {
      throw new NotFoundException(
        'Nenhum paciente encontrado com o telefone fornecido.',
      );
    }

    return patients;
  }

  async findPatientsByAddress(address: string): Promise<Patient[]> {
    const patients = await this.patientRepository.find({
      where: {
        endereco: address,
      },
    });

    if (!patients || patients.length === 0) {
      throw new NotFoundException(
        'Nenhum paciente encontrado com o endereço fornecido.',
      );
    }

    return patients;
  }

  async findPatientsByOccupation(occupation: string): Promise<Patient[]> {
    const patients = await this.patientRepository.find({
      where: {
        ocupacao: occupation,
      },
    });

    if (!patients || patients.length === 0) {
      throw new NotFoundException(
        'Nenhum paciente encontrado com a ocupação fornecida.',
      );
    }

    return patients;
  }

  async save(patient: Patient) {
    this.patientRepository.save(patient);
  }
  async findPatientsBySIST(SIST: string): Promise<Patient[]> {
    const patients = await this.patientRepository.find({
      where: {
        SIST: SIST,
      },
    });

    if (!patients || patients.length === 0) {
      throw new NotFoundException(
        'Nenhum paciente encontrado com o valor SIST fornecido.',
      );
    }

    return patients;
  }

  async findPatientsByMother(mother: string): Promise<Patient[]> {
    const patients = await this.patientRepository.find({
      where: {
        mae: mother,
      },
    });

    if (!patients || patients.length === 0) {
      throw new NotFoundException(
        'Nenhum paciente encontrado com o nome da mãe fornecido.',
      );
    }

    return patients;
  }

  async findPatientsByProfession(profession: string): Promise<Patient[]> {
    const patients = await this.patientRepository.find({
      where: {
        profissao: profession,
      },
    });

    if (!patients || patients.length === 0) {
      throw new NotFoundException(
        'Nenhum paciente encontrado com a profissão fornecida.',
      );
    }

    return patients;
  }

  async updatePatient(
    codigo: string,
    updatePatientDto: UpdatePatientDto,
  ): Promise<Patient> {
    const {
      nome,
      datanascimento,
      cartaosus,
      telefone,
      endereco,
      cgm,
      cor,
      sexo,
      ocupacao,
      cpf,
      naturalidade,
      profissao,
      obs,
    } = updatePatientDto;

    const patient = await this.patientRepository.findOne({ where: { codigo } });

    if (!patient) {
      throw new NotFoundException('Paciente não encontrado');
    }

    if (nome !== undefined && nome !== null) {
      patient.nome = nome;
    }
    if (datanascimento !== undefined && datanascimento !== null) {
      patient.datanascimento = datanascimento;
    }
    if (cartaosus !== undefined && cartaosus !== null) {
      patient.cartaosus = cartaosus;
    }
    if (telefone !== undefined && telefone !== null) {
      patient.telefone = telefone;
    }
    if (endereco !== undefined && endereco !== null) {
      patient.endereco = endereco;
    }
    if (cgm !== undefined && cgm !== null) {
      patient.cgm = cgm;
    }
    if (cor !== undefined && cor !== null) {
      patient.cor = cor;
    }
    if (sexo !== undefined && sexo !== null) {
      patient.sexo = sexo;
    }
    if (ocupacao !== undefined && ocupacao !== null) {
      patient.ocupacao = ocupacao;
    }
    if (cpf !== undefined && cpf !== null) {
      patient.cpf = cpf;
    }
    if (naturalidade !== undefined && naturalidade !== null) {
      patient.naturalidade = naturalidade;
    }
    if (profissao !== undefined && profissao !== null) {
      patient.profissao = profissao;
    }

    patient.obs = obs;

    return this.patientRepository.save(patient);
  }
}
