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
import { Professional } from '../professional/entities/professional.entity';

@Entity({ name: 'registered_users' })
export class RegisteredUsers extends BaseEntity {
  @PrimaryGeneratedColumn()
  id: number;

  @Column()
  email: string;

  @Column()
  password: string;

  @OneToOne(() => Patient)
  @JoinColumn({ name: 'cod_patient' })
  patient: Patient;

  /*@OneToOne(() => Professional)
  @JoinColumn({ name: 'cod_professional' })
  professional: Professional;
*/
  @ManyToMany(() => Confirmation, (confirmation) => confirmation.users)
  @JoinTable({
    name: 'user_confirmation',
    joinColumn: { name: 'user_id', referencedColumnName: 'id' },
    inverseJoinColumn: { name: 'confirmation_id', referencedColumnName: 'id' },
  })
  confirmations: Confirmation[];
}
