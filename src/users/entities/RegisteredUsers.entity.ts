import { Confirmation } from 'src/confirmations/entities/confirmation.entity';
import {
  Entity,
  Column,
  PrimaryGeneratedColumn,
  OneToMany,
  BaseEntity,
  JoinTable,
  ManyToMany,
  OneToOne,
  JoinColumn,
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

  //@OneToMany(() => Professional, (professional) => professional.user)
  //professionals: Professional[];

  @ManyToMany(() => Confirmation, (confirmation) => confirmation.users)
  @JoinTable({
    name: 'user_confirmation',
    joinColumn: { name: 'user_id', referencedColumnName: 'id' },
    inverseJoinColumn: { name: 'confirmation_id', referencedColumnName: 'id' },
  })
  confirmations: Confirmation[];

  @Column({ name: 'funcao_id', nullable: true })
  funcao_id?: string;


  @OneToOne(() => Professional)
  @JoinColumn({ name: 'funcao_id' })
  professional: Professional;

  @OneToOne(() => Patient)
  @JoinColumn({ name: 'funcao_id' })
  patient: Patient;
}
