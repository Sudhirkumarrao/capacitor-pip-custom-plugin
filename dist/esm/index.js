import { registerPlugin } from '@capacitor/core';
const CapacitorPIPmodePlugin = registerPlugin('CapacitorPIPmodePlugin', {
    web: () => import('./web').then(m => new m.CapacitorPIPmodePluginWeb()),
});
export * from './definitions';
export { CapacitorPIPmodePlugin };
//# sourceMappingURL=index.js.map