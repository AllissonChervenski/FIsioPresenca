import { IsEnum, IsNotEmpty, IsString } from 'class-validator';

export class CreatePatientDto {
  @IsString()
  @IsNotEmpty()
  nome: string;

  @IsString()
  @IsNotEmpty()
  cartaosus: string;

  @IsString()
  @IsNotEmpty()
  datanascimento: string;

  @IsString()
  @IsNotEmpty()
  telefone: string;

  @IsString()
  telefone2: string;

  @IsString()
  @IsNotEmpty()
  endereco: string;

  @IsString()
  telefone3: string;

  @IsString()
  @IsNotEmpty()
  cgm: string;

  @IsString()
  cor: string;

  @IsString()
  sexo: string;

  @IsString()
  ocupacao: string;

  @IsString()
  SIST: string;

  @IsString()
  cpf: string;

  @IsString()
  naturalidade: string;

  @IsString()
  mae: string;

  @IsString()
  profissao: string;

  @IsString()
  obs: string;
}
