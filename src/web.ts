import { WebPlugin } from '@capacitor/core';

import type { CapacitorPIPmodePluginPlugin } from './definitions';

export class CapacitorPIPmodePluginWeb extends WebPlugin implements CapacitorPIPmodePluginPlugin {
  async echo(options: { value: string }): Promise<{ value: string }> {
    console.log('ECHO', options);
    return options;
  }

  async enablePipMode(): Promise<any> {
    console.log('Cordova needed');
    return null;
  }
  
  async isPipModeEnabled(): Promise<any> {
    console.log('Cordova needed');
    return null;
  }
}
