import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Image Import App',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Import App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const LocalImagePage()),
                );
              },
              child: const Text('Local Image'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const NetworkImagePage()),
                );
              },
              child: const Text('Network Image'),
            ),
          ],
        ),
      ),
    );
  }
}

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
          children: <Widget>[
            const Text('Local Image Here'),
            const SizedBox(height: 20),
            Image.asset('assets/vibe.png'),
          ],
        ),
      ),
    );
  }
}

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
          children: <Widget>[
            const Text('Network Image Here'),
            const SizedBox(height: 20),
            Image.network(
                'https://docs.flutter.dev/assets/images/dash/dash-fainting.gif')
          ],
        ),
      ),
    );
  }
}
