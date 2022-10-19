import { Injectable } from '@nestjs/common';

console.log('mo');
@Injectable()
export class AppService {
  getHello(): string {
    return 'Hello Worlssd!s';
  }
  getMeow(): string {
    return 'Hello stranger';
  }
}
