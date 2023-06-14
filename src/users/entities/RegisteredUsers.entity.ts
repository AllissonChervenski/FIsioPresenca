import { Confirmation } from 'src/confirmations/entities/confirmation.entity';
import {
  Entity,
  Column,
  PrimaryGeneratedColumn,
  OneToMany,
  BaseEntity,
  JoinColumn,
  OneToOne,
  JoinTable,
  ManyToMany,
} from 'typeorm';
import { Patient } from '../patient/entities/patient.entity';

export enum UserRoles {
  user = 'user',
  admin = 'admin',
  profissional = 'profissional',
}

@Entity({ name: 'registered_users' })
export class RegisteredUsers extends BaseEntity {
  @PrimaryGeneratedColumn()
  id: number;

  @Column()
  email: string;

  @Column()
  password: string;

  @Column({
    type: 'enum',
    enum: UserRoles,
    default: UserRoles.user,
  })
  role: UserRoles;

  @OneToOne(() => Patient)
  @JoinColumn({ name: 'cod_patient' })
  patient: Patient;

  @ManyToMany(() => Confirmation)
  @JoinTable({
    name: 'user_confirmation',
    joinColumn: { name: 'user_id', referencedColumnName: 'id' },
    inverseJoinColumn: { name: 'confirmation_id', referencedColumnName: 'id' },
  })
  confirmations: Confirmation[];
}
