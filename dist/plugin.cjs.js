'use strict';

Object.defineProperty(exports, '__esModule', { value: true });

var core = require('@capacitor/core');

const CapacitorPIPmodePlugin = core.registerPlugin('CapacitorPIPmodePlugin', {
    web: () => Promise.resolve().then(function () { return web; }).then(m => new m.CapacitorPIPmodePluginWeb()),
});

class CapacitorPIPmodePluginWeb extends core.WebPlugin {
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

var web = /*#__PURE__*/Object.freeze({
    __proto__: null,
    CapacitorPIPmodePluginWeb: CapacitorPIPmodePluginWeb
});

exports.CapacitorPIPmodePlugin = CapacitorPIPmodePlugin;
//# sourceMappingURL=plugin.cjs.js.map
