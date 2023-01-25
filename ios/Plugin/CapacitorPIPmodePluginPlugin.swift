import Foundation
import Capacitor
import PIPKit

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitorjs.com/docs/plugins/ios
 */
@objc(CapacitorPIPmodePluginPlugin)
public class CapacitorPIPmodePluginPlugin: CAPPlugin {
    private let implementation = CapacitorPIPmodePlugin()
    var pipController: PIPViewController?
    
    
    @objc func echo(_ call: CAPPluginCall) {
        let value = call.getString("value") ?? ""
        call.resolve([
            "value": implementation.echo(value)
        ])
    }

    @objc func enablePipMode(_ call: CAPPluginCall) {
        let value = call.getString("value") ?? ""
        let iframeUrl = "https://linksc.aieze.in/bigbluebutton/api/join?fullName=Sudhir+Allada&meetingID=d3316333-6b8a-490f-a6c3-ffa1babb843e&password=mp_wldbf74sm&redirect=true&meetingExpireIfNoUserJoinedInMinutes=43200&meetingExpireWhenLastUserLeftInMinutes=43200&meetingLayout=SMART_LAYOUT&avatarURL=https%3A%2F%2Faieze-prod.s3.ap-south-1.amazonaws.com%2Flink-users%2Fprofile-pictures%2F12012023162501.png%3FX-Amz-Algorithm%3DAWS4-HMAC-SHA256%26X-Amz-Credential%3DASIASNNVWZ52X6U7ULFN%252F20230125%252Fap-south-1%252Fs3%252Faws4_request%26X-Amz-Date%3D20230125T093508Z%26X-Amz-Expires%3D86400%26X-Amz-Security-Token%3DIQoJb3JpZ2luX2VjEJj%252F%252F%252F%252F%252F%252F%252F%252F%252F%252FwEaCmFwLXNvdXRoLTEiSDBGAiEA3CrC1hywkcqGz92sOSdZ%252FNl0YHG122xnzQnH83yenh4CIQCF9qtzXIgbgam6tbIEbdhC3jdxBogFJ4zejulWW9AfKSrQBAgREAEaDDE2NjI3NDE5MTIyMSIMnq0l0lEcj9VbWVgOKq0E85MXKd9m7mxdPMF8RHhSKl%252Fa2N5oxM%252BiKcjiR6p8vnSyHw2Y0%252FnO7AFM2WmdzTdU%252BZzNCcG3ovykiEjpzerNQdn%252F6FUWHYnx7SoRI%252Bnwf4tkBc%252FAlBdYWRc05p3q0RFmKxnnlt%252B1KNo2dURZzrKldhDv3M%252BPRWqIdJJxSTaiwhzYuaxuCSs6d6a5qkexBFFIeh8aMYMxiBUxyZY4HZOIsZNzKP1drI2Rn6lSLcGKaWEdF5i4p6vIpeO8IorFviFyg9KTH8d8trHJVGh5WkAeoJ%252Fcxjwq%252FwMkGiZwPMyPQti30i1BrtxBWgW%252BW4eBLeBGExdp9hLKX0BhP8U1VNxVSjKWlpxy1ONH3g%252Bol8I7QHU1u3nzcMtu901lgAyS7CWkf%252FwtsTLT%252Fb1IkNELz6f6FvgtpH3Gta1Y7WBzEyNLjFWxFi4gjUW%252BybzCqxHqp9HKjx%252BgfM9KQzFm18xacoXkfY3RBzZ8lKAdmxwLknkZhBIIevk8Hy9C8Cha691vuzNwcKnLq8M59xSmV0wLUCdiv9mKHsl7Lnvmx4qWnq0p1O4TATOJEC1oSddIqeKN%252BgZa5nR3d768l5MDNI7j2643Ee5Dnfz3hTllBVLu0k4Wgu2gRhYsZlydagVjtdqspAJkF0huzvBysFl%252BIaVIgoFYXCdc7wV1%252FbwNEg%252BRxhgwNjww2oi2CZ9QZ1fihOr%252BWyBhIzo1MUtpAC2FBWTZ6KxTw8GG0bLDgZ0in0oNccswv77DngY6qAEuer13f%252Bj1SuG8Eb%252FjFTM9rLjtoOq%252FnopgD0Sbct5WCjQZpGtvdUBHuMQjTWx7Jjsuk5JqgPQdC2au63puu361CpUed0tlS3pKwfpBkbT62x6y%252Fpuky9FfCZS%252FL3KdG4A9VnDHDZ5NE%252FftPJbQeFEfZ3q2Us1xmHEnvEPx%252BOo1bscD8LjvUK706hYCZvnz3v009CZyr8UrxJcVEYiB09j0cnBYqqzWzCc%253D%26X-Amz-Signature%3D42a0f7f8df8ee109817aed2f44be42d46927f60726821627b399412a076ea767%26X-Amz-SignedHeaders%3Dhost&checksum=916346dff87b0bf1875ee2a74f3c3227107e7b28"
        pipController = PIPViewController(withURL: iframeUrl!)
        DispatchQueue.main.async {
            pipController.show(animated: true)
        }
        call.resolve()
    }

    @objc func isPipModeEnabled(_ call: CAPPluginCall) {
        let value = call.getString("value") ?? ""
        call.resolve([
            "value": implementation.echo(value)
        ])
    }
}
