export interface CapacitorPIPmodePluginPlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
  enablePipMode(): Promise<any>;
  isPipModeEnabled(): Promise<any>;
}
