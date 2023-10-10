name:$image_page.dart

import 'package:flutter/material.dart';

class ImagePage extends StatelessWidget {
  final String screenName;
  final String imagePath;

  ImagePage({this.screenName, this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Importer'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              screenName,
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 16),
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

