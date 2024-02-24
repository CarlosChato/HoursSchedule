import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Center(child: Text("Bienvenido")),
        actions: [
          IconButton(
              onPressed: () {
                print("hello");
              },
              icon: const Icon(Icons.settings))
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [],
        ),
      ),
      bottomNavigationBar: Padding(padding: ),
    );
  }
}
