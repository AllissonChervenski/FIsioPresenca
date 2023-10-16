import { Entity, PrimaryGeneratedColumn, Column, OneToMany } from 'typeorm';
import { Confirmation } from '../../../confirmations/entities/confirmation.entity';

@Entity({ name: 'profissional' })
export class Professional {
  @PrimaryGeneratedColumn({ name: 'COD', type: 'int' })
  cod: number;

  @Column({ name: 'NOME', type: 'varchar', length: 50 })
  nome: string;

  @Column({ name: 'CBO', type: 'int' })
  cbo: number;

  @Column({ name: 'CODIGO', type: 'text' })
  codigo: string;

  @Column({ name: 'DESCRICAO', type: 'text' })
  descricao: string;

  @OneToMany(() => Confirmation, (confirmations) => confirmations.professional)
  confirmations: Confirmation[];

  /*
   @OneToOne(() => RegisteredUsers)
  @JoinColumn({ name: 'funcao_id', referencedColumnName: 'funcao_id' })
  registeredUser: RegisteredUsers;
   */
}
