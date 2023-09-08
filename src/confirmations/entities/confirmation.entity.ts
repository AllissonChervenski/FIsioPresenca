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

  @ManyToOne(() => Patient, (patient) => patient.confirmations)
  patient: Patient;

  @Column({ name: 'arrival_time' })
  arrivaltime: Date;

  @Column({ name: 'appointment_time' })
  appointmenttime: Date;

  @Column({ name: 'confirmation_status' })
  confirmationstatus: boolean;

  @ManyToMany(() => RegisteredUsers, (user) => user.confirmations)
  @JoinTable({
    name: 'user_confirmation',
    joinColumns: [{ name: 'confirmation_id', referencedColumnName: 'id' }],
    inverseJoinColumns: [{ name: 'user_id', referencedColumnName: 'id' }],
  })
  users: RegisteredUsers[];
}
