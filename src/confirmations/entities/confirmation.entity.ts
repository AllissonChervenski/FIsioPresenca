import { RegisteredUsers } from 'src/users/entities/RegisteredUsers.entity';
import {
  Entity,
  Column,
  PrimaryGeneratedColumn,
  ManyToOne,
  JoinColumn,
  JoinTable,
  ManyToMany,
} from 'typeorm';

@Entity()
export class Confirmation {
  @PrimaryGeneratedColumn()
  id: number;

  @Column({ name: 'patient_name' })
  patientname: string;

  @Column({ name: 'arrival_time' })
  arrivaltime: Date;

  @Column({ name: 'appointment_time' })
  appointmenttime: Date;

  @Column({ name: 'confirmation_status' })
  confirmationstatus: boolean;

  @ManyToOne(() => RegisteredUsers)
  @JoinColumn({ name: 'user_id' })
  user1: RegisteredUsers;

  @ManyToMany(() => RegisteredUsers)
  @JoinTable({
    name: 'confirmation_users',
    joinColumn: { name: 'confirmation_id', referencedColumnName: 'id' },
    inverseJoinColumn: { name: 'user_id', referencedColumnName: 'id' },
  })
  users: RegisteredUsers[];
}
