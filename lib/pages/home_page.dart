import 'package:codepur/widgets/drawer.dart';
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
        title: const Text(
          'Catlog App',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      drawer: const MyDrawer(),
      body: Center(
        child: Text(context.runtimeType.toString()),
      ),
    );
  }
}
