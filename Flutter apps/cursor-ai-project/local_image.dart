name:$local_image.dart

import 'package:flutter/material.dart';
import 'package:project_name/image_page.dart';

class LocalImagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Local Image'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              child: Text('Image 1'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ImagePage(
                    screenName: 'Local Image 1',
                    imagePath: 'assets/local_image_1.jpg',
                  )),
                );
              },
            ),
            RaisedButton(
              child: Text('Image 2'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ImagePage(
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

