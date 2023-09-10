import { RegisteredUsers } from 'src/users/entities/RegisteredUsers.entity';
import {
  Entity,
  Column,
  PrimaryGeneratedColumn,
  ManyToMany,
  JoinTable,
  ManyToOne,
} from 'typeorm';
import { Patient } from '../../users/patient/entities/patient.entity';

@Entity({ name: 'confirmation' })
export class Confirmation {
  @PrimaryGeneratedColumn()
  id: number;

  @Column({ name: 'codigo_procedimento' })
  codigoProcedimento: string;

  @Column({ name: 'motivo_atendimento' })
  motivoAtendimento: string;

  @Column({ name: 'tratamento' })
  tratamento: string;

  @Column({ name: 'carater_atendimento' })
  caraterAtendimento: string;

  @Column({ name: 'cid' })
  cid: string;

  @Column({ name: 'diagnostico' })
  diagnostico: string;

  @ManyToOne(() => Patient, (patient) => patient.confirmations)
  patient: Patient;

  @Column({ name: 'arrival_time' })
  arrivaltime: Date;

  @Column({ name: 'appointment_time' })
  appointmenttime: Date;

  @Column({ name: 'confirmation_status' })
  confirmationstatus: boolean;

  //Informações da Unidade
  @Column({ name: 'nome_unidade' })
  nomeUnidade: string;

  @Column({ name: 'endereco_unidade' })
  enderecoUnidade: string;

  @Column({ name: 'municipio_unidade' })
  municipioUnidade: string;

  @Column({ name: 'uf_unidade' })
  ufUnidade: string;
}

/*
@ManyToMany(() => RegisteredUsers, (user) => user.confirmations)
@JoinTable({
  name: 'user_confirmation',
  joinColumns: [{ name: 'confirmation_id', referencedColumnName: 'id' }],
  inverseJoinColumns: [{ name: 'user_id', referencedColumnName: 'id' }],
})
users: RegisteredUsers[];

*/
