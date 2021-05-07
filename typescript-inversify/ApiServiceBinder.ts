import {interfaces} from 'inversify';

import { DefaultService } from './api/default.service';

export class ApiServiceBinder {
    public static with(container: interfaces.Container) {
        container.bind<DefaultService>('DefaultService').to(DefaultService).inSingletonScope();
    }
}
