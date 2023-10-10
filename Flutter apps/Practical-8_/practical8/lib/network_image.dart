import 'package:flutter/material.dart';
import 'package:practical8/image_page.dart';

class NetworkImagePage extends StatelessWidget {
  const NetworkImagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Network Image'),
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
                            screenName: 'Network Image 1',
                            imagePath: 'assets/network_image_1.jpg',
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
                            screenName: 'Network Image 2',
                            imagePath: 'assets/network_image_2.jpg',
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
