import { IsBoolean, IsDateString, IsNotEmpty, IsString } from 'class-validator';

export class CreateConfirmationDto {
  @IsString()
  @IsNotEmpty()
  patientname: string;

  @IsDateString()
  @IsNotEmpty()
  arrivaltime: Date;

  @IsDateString()
  @IsNotEmpty()
  appointmenttime: Date;

  @IsBoolean()
  @IsNotEmpty()
  confirmationstatus: boolean;

  @IsNotEmpty()
  user_id: number;
}
