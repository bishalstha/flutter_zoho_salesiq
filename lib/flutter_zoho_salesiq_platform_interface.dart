import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_zoho_salesiq_method_channel.dart';

abstract class FlutterZohoSalesIQPlatform extends PlatformInterface {
  /// Constructs a FlutterZohoSalesiqPlatform.
  FlutterZohoSalesIQPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterZohoSalesIQPlatform _instance =
      MethodChannelFlutterZohoSalesIQ();

  /// The default instance of [FlutterZohoSalesIQPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterZohoSalesIQ].
  static FlutterZohoSalesIQPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterZohoSalesIQPlatform] when
  /// they register themselves.
  static set instance(FlutterZohoSalesIQPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
