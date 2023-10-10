import 'package:flutter/material.dart';
import 'package:project_name/image_page.dart';
import 'package:project_name/network_image.dart';
import 'package:project_name/local_image.dart';

class HomePage extends StatelessWidget {
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
            RaisedButton(
              child: Text('Network Image'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NetworkImagePage()),
                );
              },
            ),
            RaisedButton(
              child: Text('Local Image'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LocalImagePage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
