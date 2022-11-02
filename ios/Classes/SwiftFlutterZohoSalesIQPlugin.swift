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
    let data = call.arguments as! [String: String]
    switch call.method {
    case "initSDK":
      initSDK(data["appKey"]!, data["accessKey"]!, result)
    case "setVisitorName":
      setVisitorName(data["name"]!, result)
    case "setVisitorEmail":
      setVisitorEmail(data["email"]!, result)
    case "showChat":
      showChat(result)
    default: result(nil)
    }
  }
  
  private func initSDK(_ appKey: String, _ accessKey: String, _ result: @escaping FlutterResult) -> Void {
    ZohoSalesIQ.initWithAppKey(appKey, accessKey: accessKey) { complete in
      result(complete)
    }
  }
  
  private func setVisitorName(_ name: String, _ result: @escaping FlutterResult) -> Void {
    ZohoSalesIQ.Visitor.setName(name)
    result(nil)
  }
  
  private func setVisitorEmail(_ email: String, _ result: @escaping FlutterResult) -> Void {
    ZohoSalesIQ.Visitor.setEmail(email)
    result(nil)
  }
  
  private func showChat(_ result: @escaping FlutterResult) -> Void {
    ZohoSalesIQ.Chat.show()
    result(nil)
  }
}
