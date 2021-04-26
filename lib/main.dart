import 'package:flutter/material.dart';
import 'package:syncmeter/syncmeter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sync Meter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SyncMeter(),
    );
  }
}
