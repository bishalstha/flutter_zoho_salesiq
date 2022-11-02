import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_zoho_salesiq/flutter_zoho_salesiq.dart';
import 'package:flutter_zoho_salesiq/flutter_zoho_salesiq_platform_interface.dart';
import 'package:flutter_zoho_salesiq/flutter_zoho_salesiq_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterZohoSalesiqPlatform
    with MockPlatformInterfaceMixin
    implements FlutterZohoSalesIQPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FlutterZohoSalesIQPlatform initialPlatform = FlutterZohoSalesIQPlatform.instance;

  test('$MethodChannelFlutterZohoSalesIQ is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterZohoSalesIQ>());
  });

  test('getPlatformVersion', () async {
    FlutterZohoSalesIQ FlutterZohoSalesIQPlugin = FlutterZohoSalesIQ();
    MockFlutterZohoSalesiqPlatform fakePlatform = MockFlutterZohoSalesiqPlatform();
    FlutterZohoSalesIQPlatform.instance = fakePlatform;

    expect(await FlutterZohoSalesIQPlugin.getPlatformVersion(), '42');
  });
}
