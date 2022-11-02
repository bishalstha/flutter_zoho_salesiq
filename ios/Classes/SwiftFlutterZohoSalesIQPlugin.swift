import Flutter
import Mobilisten
import UIKit

public class SwiftFlutterZohoSalesIQPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "flutter_zoho_salesiq", binaryMessenger: registrar.messenger())
    let instance = SwiftFlutterZohoSalesIQPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }
  
  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch call.method {
    case "initSDK":
      let data = call.arguments as! [String: String]
      initSDK(data["appKey"]!, data["accessKey"]!, result)
    default: result(nil)
    }
  }
  
  private func initSDK(_ appKey: String, _ accessKey: String, _ result: @escaping FlutterResult) -> Void {
    ZohoSalesIQ.initWithAppKey(appKey, accessKey: accessKey) { complete in
      result(complete)
    }
  }
}
