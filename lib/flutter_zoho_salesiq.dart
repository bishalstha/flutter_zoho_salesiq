import 'flutter_zoho_salesiq_platform_interface.dart';

class FlutterZohoSalesIQ {
  static Future<bool?> initSDK({
    required String appKey,
    required String accessKey,
  }) {
    return FlutterZohoSalesIQPlatform.instance.initSDK(appKey, accessKey);
  }
}
