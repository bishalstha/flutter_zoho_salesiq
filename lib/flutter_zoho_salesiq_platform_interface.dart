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

  Future<bool?> initSDK(String appKey, String accessKey) {
    throw UnimplementedError('initSDK() has not been implemented.');
  }

  Future<bool?> registerVisitor(String id) {
    throw UnimplementedError('registerVisitor() has not been implemented.');
  }

  Future<bool?> unregisterVisitor() {
    throw UnimplementedError('unregisterVisitor() has not been implemented.');
  }

  Future<void> setVisitorName(String name) {
    throw UnimplementedError('setVisitorName() has not been implemented.');
  }

  Future<void> setVisitorEmail(String email) {
    throw UnimplementedError('setVisitorEmail() has not been implemented.');
  }

  Future<void> addInfos(Map<String, String> infos) {
    throw UnimplementedError('addInfos() has not been implemented.');
  }

  Future<void> setDepartment(String name) {
    throw UnimplementedError('setDepartment() has not been implemented.');
  }

  Future<void> showChat() {
    throw UnimplementedError('showChat() has not been implemented.');
  }
}
