import Flutter
import UIKit

public class SwiftFlutterZohoSalesIQPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "flutter_zoho_salesiq", binaryMessenger: registrar.messenger())
    let instance = SwiftFlutterZohoSalesIQPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    result("iOS " + UIDevice.current.systemVersion)
  }
}
