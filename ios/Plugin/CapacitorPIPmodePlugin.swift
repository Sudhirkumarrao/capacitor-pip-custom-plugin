import Foundation

@objc public class CapacitorPIPmodePlugin: NSObject {
    @objc public func echo(_ value: String) -> String {
        print(value)
        return value
    }

    @objc public func enablePipMode(_ value: String) -> String {
        print(value)
        return value
    }

    @objc public func isPipModeEnabled(_ value: String) -> String {
        print(value)
        return value
    }
}
