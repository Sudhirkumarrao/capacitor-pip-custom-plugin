import { WebPlugin } from '@capacitor/core';
import type { CapacitorPIPmodePluginPlugin } from './definitions';
export declare class CapacitorPIPmodePluginWeb extends WebPlugin implements CapacitorPIPmodePluginPlugin {
    echo(options: {
        value: string;
    }): Promise<{
        value: string;
    }>;
    enablePipMode(): Promise<any>;
    isPipModeEnabled(): Promise<any>;
}
