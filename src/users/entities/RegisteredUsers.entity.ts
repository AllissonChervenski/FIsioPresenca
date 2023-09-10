import { Entity, Column, PrimaryGeneratedColumn, BaseEntity } from 'typeorm';

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

  /*
  @ManyToMany(() => Confirmation, (confirmation) => confirmation.users)
  @JoinTable({
    name: 'user_confirmation',
    joinColumn: { name: 'user_id', referencedColumnName: 'id' },
    inverseJoinColumn: { name: 'confirmation_id', referencedColumnName: 'id' },
  })
  confirmations: Confirmation[];
  
   */

  @Column({ name: 'funcao_id', nullable: true })
  funcao_id?: string;
}
