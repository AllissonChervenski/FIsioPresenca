import { IsBoolean, IsDateString, IsNotEmpty, IsString } from 'class-validator';

export class CreateConfirmationDto {
  @IsString()
  @IsNotEmpty()
  patientcode: string;

  @IsDateString()
  @IsNotEmpty()
  arrivaltime: Date;

  @IsBoolean()
  @IsNotEmpty()
  confirmationstatus: boolean;

  @IsString()
  nomeUnidade: string;

  @IsString()
  enderecoUnidade: string;

  @IsString()
  municipioUnidade: string;

  @IsString()
  ufUnidade: string;

  @IsString()
  @IsNotEmpty()
  codigoProcedimento: string;

  @IsString()
  motivoAtendimento: string;

  @IsString()
  tratamento: string;

  @IsString()
  caraterAtendimento: string;

  @IsString()
  cid: string;

  @IsString()
  diagnostico: string;

  @IsNotEmpty()
  professionalcode: number;
  /*
      Código da Tabela de Procedimentos
      Motivo do Atendimento
      Tratamento
      Caráter do Atendimento
      Cid
      Diagnóstico

   */
}
