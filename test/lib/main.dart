import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello world"),
      ),
      body: const Center(
        child: Column(
          children: [
            Text(
              "Text 1",
              style: TextStyle(fontSize: 30),
            ),
            Text(
              "Text 1",
              style: TextStyle(fontSize: 30),
            ),
            Text(
              "Text 1",
              style: TextStyle(fontSize: 30),
            ),
          ],
        ),
      ),
    );
  }
}
