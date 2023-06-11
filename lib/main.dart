import 'package:flutter/material.dart';
import 'package:codepur/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  MyApp({super.key});
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: HomePage(),
      ),
    );
  }
}
