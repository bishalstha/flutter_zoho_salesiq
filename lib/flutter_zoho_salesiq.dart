import 'flutter_zoho_salesiq_platform_interface.dart';

class FlutterZohoSalesIQ {
  static Future<bool?> initSDK({
    required String appKey,
    required String accessKey,
  }) {
    return FlutterZohoSalesIQPlatform.instance.initSDK(appKey, accessKey);
  }

  /// This API allows you to register a user using a unique ID
  /// with the SalesIQ SDK. If your application has login and
  /// logout life cycles, you can enroll your visitor and their
  /// activity in the SDK will be synchronized across multiple platforms.
  static Future<bool?> registerVisitor(String id) {
    return FlutterZohoSalesIQPlatform.instance.registerVisitor(id);
  }

  /// This API allows you to unregister a user once they are
  /// registered using the .registerVisitor() API. If your application
  /// has login and logout life cycles, you can unregister a visitor
  /// during a session logout which would clear any data the SDK may
  /// hold such as past conversations had by the registered user.
  static Future<bool?> unregisterVisitor() {
    return FlutterZohoSalesIQPlatform.instance.unregisterVisitor();
  }

  static Future<void> setVisitorName(String name) {
    return FlutterZohoSalesIQPlatform.instance.setVisitorName(name);
  }

  static Future<void> setVisitorEmail(String email) {
    return FlutterZohoSalesIQPlatform.instance.setVisitorEmail(email);
  }

  static Future<void> addInfos(Map<String, String> infos) {
    return FlutterZohoSalesIQPlatform.instance.addInfos(infos);
  }

  static Future<void> setDepartment(String name) {
    return FlutterZohoSalesIQPlatform.instance.setDepartment(name);
  }

  /// Shows live chat page with the customer service
  static Future<void> showChat() {
    return FlutterZohoSalesIQPlatform.instance.showChat();
  }
}
