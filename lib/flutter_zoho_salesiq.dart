import 'flutter_zoho_salesiq_platform_interface.dart';

class FlutterZohoSalesIQ {
  static Future<bool?> initSDK({
    required String appKey,
    required String accessKey,
  }) {
    return FlutterZohoSalesIQPlatform.instance.initSDK(appKey, accessKey);
  }

  static Future<void> setVisitorName(String name) {
    return FlutterZohoSalesIQPlatform.instance.setVisitorName(name);
  }

  static Future<void> setVisitorEmail(String email) {
    return FlutterZohoSalesIQPlatform.instance.setVisitorEmail(email);
  }

  static Future<void> showChat() {
    return FlutterZohoSalesIQPlatform.instance.showChat();
  }
}
