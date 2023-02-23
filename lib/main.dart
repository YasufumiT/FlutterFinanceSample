import 'package:flutter/material.dart';
import 'package:flutter_finance_sample/dashboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Finance Sample',
      debugShowCheckedModeBanner: false,
      home: Dashboard(),
    );
  }
}
