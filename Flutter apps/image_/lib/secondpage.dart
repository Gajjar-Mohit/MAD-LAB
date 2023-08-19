import 'package:flutter/material.dart';
import 'package:image_/thirdpage.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Page"),
      ),
      body: Center(
        child: OutlinedButton(
            onPressed: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => const ThirdPage())),
            child: const Text("Third page")),
      ),
    );
  }
}
