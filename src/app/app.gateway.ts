import {
  WebSocketGateway,
  WebSocketServer,
  OnGatewayConnection,
  OnGatewayDisconnect,
} from '@nestjs/websockets';
import { Server } from 'ws';
import { AuthService } from '../users/auth.service';

@WebSocketGateway()
export class AppGateway implements OnGatewayConnection, OnGatewayDisconnect {
  constructor(private readonly authService: AuthService) {}

  @WebSocketServer() server: Server;

  async handleConnection(client: any) {
    const token = client.handshake.query.token;
    if (!token) {
      client.disconnect();
      return;
    }

    try {
      const user = await this.authService.verifyToken(token);
      client.user = user;
    } catch (e) {
      client.disconnect();
      return;
    }
  }

  handleDisconnect(client: any) {
    delete client.user;
  }
}
