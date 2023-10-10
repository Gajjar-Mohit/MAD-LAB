import 'package:flutter/material.dart';
import 'package:practical8/image_page.dart';

class LocalImagePage extends StatelessWidget {
  const LocalImagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Local Image'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text('Image 1'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ImagePage(
                            screenName: 'Local Image 1',
                            imagePath: 'assets/local_image_1.jpg',
                          )),
                );
              },
            ),
            ElevatedButton(
              child: const Text('Image 2'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ImagePage(
                            screenName: 'Local Image 2',
                            imagePath: 'assets/local_image_2.jpg',
                          )),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
