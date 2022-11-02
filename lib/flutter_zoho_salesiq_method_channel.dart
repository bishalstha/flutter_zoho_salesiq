import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_zoho_salesiq_platform_interface.dart';

/// An implementation of [FlutterZohoSalesIQPlatform] that uses method channels.
class MethodChannelFlutterZohoSalesIQ extends FlutterZohoSalesIQPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_zoho_salesiq');

  @override
  Future<bool?> initSDK(String appKey, String accessKey) async {
    return methodChannel.invokeMethod<bool>(
      'initSDK',
      {
        'appKey': appKey,
        'accessKey': accessKey,
      },
    );
  }
}
