import { RegisteredUsers } from 'src/users/entities/RegisteredUsers.entity';
import { Entity, PrimaryGeneratedColumn, Column, OneToOne } from 'typeorm';

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

  @OneToOne(() => RegisteredUsers, (user) => user.patient)
  registeredUser: RegisteredUsers;
}
