# Flutter Zoho SalesIQ Plugins

Simple flutter plugin for Zoho SalesIQ SDK

# Steps

1. Initialization

```dart
import 'package:flutter_zoho_salesiq/flutter_zoho_salesiq.dart';

// This should be before runApp() call in the main function
WidgetsFlutterBinding.ensureInitialized();
final success = await FlutterZohoSalesIQ.initSDK(
  appKey: 'appKey',
  accessKey: 'accessKey',
);
print('SalesIQ init: $success');
```