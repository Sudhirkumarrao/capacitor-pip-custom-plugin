package aieze.link.vc.custom.plugins;

import android.app.PictureInPictureParams;
import android.os.Build;
import android.util.Log;
import android.util.Rational;

import com.getcapacitor.JSObject;
import com.getcapacitor.Plugin;
import com.getcapacitor.PluginCall;
import com.getcapacitor.PluginMethod;
import com.getcapacitor.annotation.CapacitorPlugin;

import org.json.JSONException;

@CapacitorPlugin(name = "CapacitorPIPmodePlugin", requestCodes = { CapacitorPIPmodePluginPlugin.ENABLE_PIP })
public class CapacitorPIPmodePluginPlugin extends Plugin {

    protected static final int ENABLE_PIP = 1;
    private CapacitorPIPmodePlugin implementation = new CapacitorPIPmodePlugin();

    @PluginMethod
    public void echo(PluginCall call) {
        String value = call.getString("value");

        JSObject ret = new JSObject();
        ret.put("value", implementation.echo(value));
        call.resolve(ret);
    }

    @PluginMethod()
    public void enablePipMode(PluginCall call) {
        if (supportsPiPMode()) {
            enterPipMode();
        }
        call.resolve();
    }

    @PluginMethod()
    public void isPipModeEnabled(PluginCall call) throws JSONException {
        int isPIPMode = 0;
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.N) {
            isPIPMode = getActivity().isInPictureInPictureMode() ? 1 : 0;
        }
        JSObject json = new JSObject();
        json.put("isPIPMode", isPIPMode);
        call.resolve(json);
    }

    public boolean supportsPiPMode() {
        return Build.VERSION.SDK_INT >= Build.VERSION_CODES.O;
    }

    private void enterPipMode() {
        PictureInPictureParams params = null;
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            var aspectRatio = new Rational(9, 16);
            params = new PictureInPictureParams.Builder().setAspectRatio(aspectRatio).setActions(null).build();
            try {
                getActivity().enterPictureInPictureMode(params);
            } catch (Exception e) {
                Log.e("error", e.getMessage());
            }
        }
    }
}
