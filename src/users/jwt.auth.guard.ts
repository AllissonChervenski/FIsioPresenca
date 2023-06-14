import { Injectable, ExecutionContext } from '@nestjs/common';
import { AuthGuard } from '@nestjs/passport';

@Injectable()
export class JwtAuthGuard extends AuthGuard('jwt') {
  getRequest(context: ExecutionContext) {
    const request = context.switchToHttp().getRequest();
    return request;
  }

  canActivate(context: ExecutionContext) {
    const request = this.getRequest(context);
    const authHeader = request.headers.authorization;
    // Verifique se o cabeçalho de autorização existe e começa com "Bearer"
    if (authHeader && authHeader.startsWith('Bearer ')) {
      // Extraia o token removendo o prefixo "Bearer "
      const token = authHeader.substring(7);
      // Faça o que desejar com o token (validação, decodificação, etc.)
    }
    return super.canActivate(context);
  }
}
