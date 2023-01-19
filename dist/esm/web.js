import { WebPlugin } from '@capacitor/core';
export class CapacitorPIPmodePluginWeb extends WebPlugin {
    async echo(options) {
        console.log('ECHO', options);
        return options;
    }
    async enablePipMode() {
        console.log('Cordova needed');
        return null;
    }
    async isPipModeEnabled() {
        console.log('Cordova needed');
        return null;
    }
}
//# sourceMappingURL=web.js.map