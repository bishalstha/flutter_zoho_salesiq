import 'flutter_zoho_salesiq_platform_interface.dart';

class FlutterZohoSalesIQ {
  Future<String?> getPlatformVersion() {
    return FlutterZohoSalesIQPlatform.instance.getPlatformVersion();
  }
}
