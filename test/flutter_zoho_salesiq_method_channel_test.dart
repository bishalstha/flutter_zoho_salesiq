import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_zoho_salesiq/flutter_zoho_salesiq_method_channel.dart';

void main() {
  MethodChannelFlutterZohoSalesIQ platform = MethodChannelFlutterZohoSalesIQ();
  const MethodChannel channel = MethodChannel('flutter_zoho_salesiq');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
