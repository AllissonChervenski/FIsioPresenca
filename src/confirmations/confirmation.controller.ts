import {
  Controller,
  Get,
  Post,
  Put,
  Delete,
  Body,
  Param,
  UseGuards,
} from '@nestjs/common';
import { ConfirmationService } from './confirmation.service';
import { CreateConfirmationDto } from './dto/create-confirmation.dto';
import { Confirmation } from './entities/confirmation.entity';
import { AuthGuard } from '@nestjs/passport';

@Controller('confirmations')
export class ConfirmationController {
  constructor(private readonly confirmationService: ConfirmationService) {}

  @UseGuards(AuthGuard('jwt'))
  @Post('/create')
  async createConfirmation(
    @Body() createConfirmationDto: CreateConfirmationDto,
  ): Promise<Confirmation> {
    return this.confirmationService.createConfirmation(createConfirmationDto);
  }

  @UseGuards(AuthGuard('jwt'))
  @Get(':id')
  async getConfirmationById(@Param('id') id: number): Promise<Confirmation> {
    return this.confirmationService.getConfirmationById(id);
  }

  @UseGuards(AuthGuard('jwt'))
  @Get()
  async getAllConfirmations(): Promise<Confirmation[]> {
    return this.confirmationService.getAllConfirmations();
  }

  @UseGuards(AuthGuard('jwt'))
  @Put(':id')
  async updateConfirmation(
    @Param('id') id: number,
    @Body() updateConfirmationDto: CreateConfirmationDto,
  ): Promise<Confirmation> {
    return this.confirmationService.updateConfirmation(
      id,
      updateConfirmationDto,
    );
  }

  @UseGuards(AuthGuard('jwt'))
  @Delete(':id')
  async deleteConfirmation(@Param('id') id: number): Promise<void> {
    return this.confirmationService.deleteConfirmation(id);
  }
}
