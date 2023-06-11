import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    int days = 30;
    String name = 'Chetan';
    // bool male = true;
    // const pi = 22 / 7;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Catlog'),
        centerTitle: true,
      ),
      drawer: const Drawer(),
      body: Center(
        child: Text("Hello world to $days days of flutter by $name"),
      ),
    );
  }
}
