import 'package:flutter/material.dart';
import 'package:flutter_zoho_salesiq/flutter_zoho_salesiq.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final success = await FlutterZohoSalesIQ.initSDK(
    appKey: 'appKey',
    accessKey: 'accessKey',
  );
  debugPrint('SalesIQ init: $success');
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                FlutterZohoSalesIQ.setVisitorName('First Last');
                FlutterZohoSalesIQ.setVisitorEmail('test@email.com');
              },
              child: const Text("Initialize User's Details"),
            ),
            TextButton(
              onPressed: () => FlutterZohoSalesIQ.showChat(),
              child: const Text('Open Live Chat'),
            ),
          ],
        ),
      ),
    );
  }
}
