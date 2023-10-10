import 'package:flutter/material.dart';
import 'package:practical8/local_image.dart';
import 'package:practical8/network_image.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Importer'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text('Network Image'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const NetworkImagePage()),
                );
              },
            ),
            ElevatedButton(
              child: const Text('Local Image'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const LocalImagePage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
