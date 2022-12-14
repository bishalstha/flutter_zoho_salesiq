import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_zoho_salesiq_platform_interface.dart';

/// An implementation of [FlutterZohoSalesIQPlatform] that uses method channels.
class MethodChannelFlutterZohoSalesIQ extends FlutterZohoSalesIQPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_zoho_salesiq');

  @override
  Future<bool?> initSDK(String appKey, String accessKey) {
    return methodChannel.invokeMethod<bool>(
      'initSDK',
      {
        'appKey': appKey,
        'accessKey': accessKey,
      },
    );
  }

  @override
  Future<bool?> registerVisitor(String id) {
    return methodChannel.invokeMethod<bool>(
      'registerVisitor',
      {'id': id},
    );
  }

  @override
  Future<bool?> unregisterVisitor() {
    return methodChannel.invokeMethod<bool>(
      'unregisterVisitor',
      {},
    );
  }

  @override
  Future<void> setVisitorName(String name) {
    return methodChannel.invokeMethod<void>(
      'setVisitorName',
      {'name': name},
    );
  }

  @override
  Future<void> setVisitorEmail(String email) {
    return methodChannel.invokeMethod<void>(
      'setVisitorEmail',
      {'email': email},
    );
  }

  @override
  Future<void> addInfos(Map<String, String> infos) {
    return methodChannel.invokeMethod<void>(
      'addInfos',
      infos,
    );
  }

  @override
  Future<void> setDepartment(String name) {
    return methodChannel.invokeMethod<void>(
      'setDepartment',
      {'name': name},
    );
  }

  @override
  Future<void> showChat() {
    return methodChannel.invokeMethod<void>(
      'showChat',
      {},
    );
  }
}
