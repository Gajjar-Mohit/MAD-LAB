import 'package:flutter/material.dart';
import 'package:project_name/image_page.dart';

class NetworkImagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Network Image'),
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
                    screenName: 'Network Image 1',
                    imagePath: 'assets/network_image_1.jpg',
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
