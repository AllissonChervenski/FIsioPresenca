
import {
  Entity,
  OneToMany,
  PrimaryColumn,
} from 'typeorm';
import { Column } from 'typeorm/decorator/columns/Column';
import { Confirmation } from '../../../confirmations/entities/confirmation.entity';

@Entity({ name: 'paciente' })
export class Patient {
  @PrimaryColumn({ type: 'varchar', length: 10, name: 'CODIGO' })
  codigo: string;

  @Column({ name: 'NOME', type: 'text' })
  nome: string;

  @Column({ name: 'CARTAOSUS', type: 'text' })
  cartaosus: string;

  @Column({ name: 'DATANASCIMENTO', type: 'text' })
  datanascimento: string;

  @Column({ name: 'TELEFONE' })
  telefone: string;

  @Column({ name: 'TELEFONE2', nullable: true })
  telefone2: string;

  @Column({ name: 'ENDERECO' })
  endereco: string;

  @Column({ name: 'TELEFONE3', nullable: true })
  telefone3: string;

  @Column({ name: 'CGM' })
  cgm: string;

  @Column({ name: 'COR', type: 'text' })
  cor: string;

  @Column({ name: 'SEXO', type: 'text' })
  sexo: string;

  @Column({ name: 'OCUPACAO', type: 'text' })
  ocupacao: string;

  @Column({ name: 'SIST' })
  SIST: string;

  @Column({ name: 'CPF', type: 'text' })
  cpf: string;

  @Column({ name: 'NATURALIDADE', type: 'text' })
  naturalidade: string;

  @Column({ name: 'MAE', type: 'text' })
  mae: string;

  @Column({ name: 'PROFISSAO' })
  profissao: string;

  @Column({ name: 'obs' })
  obs: string;

  @OneToMany(() => Confirmation, (confirmation) => confirmation.patient)
  confirmations: Confirmation[];

  @Column()
  isActive: boolean;

  /*
  @OneToOne(() => RegisteredUsers)
  @JoinColumn({ name: 'funcao_id', referencedColumnName: 'funcao_id' })
  registeredUser: RegisteredUsers;
   */
}
