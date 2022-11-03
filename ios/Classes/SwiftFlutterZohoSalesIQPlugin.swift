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
    case "registerVisitor":
      registerVisitor(data["id"]!, result)
    case "unregisterVisitor":
      unregisterVisitor(result)
    case "setVisitorName":
      setVisitorName(data["name"]!, result)
    case "setVisitorEmail":
      setVisitorEmail(data["email"]!, result)
    case "addInfos":
      addInfos(data, result)
    case "setDepartment":
      setDepartment(data["name"]!, result)
    case "showChat":
      showChat(result)
    default: fatalError("\(call.method) is not implemented!")
    }
  }
  
  private func initSDK(_ appKey: String, _ accessKey: String, _ result: @escaping FlutterResult) -> Void {
    ZohoSalesIQ.initWithAppKey(appKey, accessKey: accessKey) { result($0) }
  }
  
  private func registerVisitor(_ id: String, _ result: @escaping FlutterResult) -> Void {
    ZohoSalesIQ.registerVisitor(id) { result($0) }
  }
  
  private func unregisterVisitor(_ result: @escaping FlutterResult) -> Void {
    ZohoSalesIQ.unregisterVisitor() { result($0) }
  }
  
  private func setVisitorName(_ name: String, _ result: @escaping FlutterResult) -> Void {
    ZohoSalesIQ.Visitor.setName(name)
    result(nil)
  }
  
  private func setVisitorEmail(_ email: String, _ result: @escaping FlutterResult) -> Void {
    ZohoSalesIQ.Visitor.setEmail(email)
    result(nil)
  }
  
  private func addInfos(_ data: [String: String], _ result: @escaping FlutterResult) -> Void {
    for key in data.keys {
      ZohoSalesIQ.Visitor.addInfo(key, value: data[key]!)
    }
    result(nil)
  }
  
  private func setDepartment(_ name: String, _ result: @escaping FlutterResult) -> Void {
    ZohoSalesIQ.Chat.setDepartment(name)
    result(nil)
  }
  
  private func showChat(_ result: @escaping FlutterResult) -> Void {
    ZohoSalesIQ.Chat.show()
    result(nil)
  }
}
