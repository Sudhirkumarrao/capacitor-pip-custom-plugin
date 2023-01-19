import { registerPlugin } from '@capacitor/core';

import type { CapacitorPIPmodePluginPlugin } from './definitions';

const CapacitorPIPmodePlugin = registerPlugin<CapacitorPIPmodePluginPlugin>('CapacitorPIPmodePlugin', {
  web: () => import('./web').then(m => new m.CapacitorPIPmodePluginWeb()),
});

export * from './definitions';
export { CapacitorPIPmodePlugin };
