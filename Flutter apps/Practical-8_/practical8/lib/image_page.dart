import 'package:flutter/material.dart';

class ImagePage extends StatelessWidget {
  final String screenName;
  final String imagePath;

  const ImagePage(
      {super.key, required this.screenName, required this.imagePath});

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
            Text(
              screenName,
              style: const TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 16),
            Image.asset(
              imagePath,
              width: 200,
              height: 200,
            ),
          ],
        ),
      ),
    );
  }
}
