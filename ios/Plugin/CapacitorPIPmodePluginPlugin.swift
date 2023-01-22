import Foundation
import Capacitor
import AVKit

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitorjs.com/docs/plugins/ios
 */
@objc(CapacitorPIPmodePluginPlugin)
public class CapacitorPIPmodePluginPlugin: CAPPlugin {
    private let implementation = CapacitorPIPmodePlugin()

    @objc func echo(_ call: CAPPluginCall) {
        let value = call.getString("value") ?? ""
        call.resolve([
            "value": implementation.echo(value)
        ])
    }

    @objc func enablePipMode(_ call: CAPPluginCall) {
        let player = AVPlayer()
        let playerViewController = AVPlayerViewController()
        playerViewController.player = player
        playerViewController.allowsPictureInPicturePlayback = true
        DispatchQueue.main.async {
            self.bridge.viewController.preset(playerViewController, animated: true){
                playerViewController.canStartPictureInPictureAutomaticallyFromInline = true
            }
        }
        call.success()
    }

    @objc func isPipModeEnabled(_ call: CAPPluginCall) {
        let value = call.getString("value") ?? ""
        call.resolve([
            "value": implementation.echo(value)
        ])
    }
}
