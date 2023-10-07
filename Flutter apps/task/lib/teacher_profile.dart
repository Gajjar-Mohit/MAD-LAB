import 'package:flutter/material.dart';
import 'package:task/teachers.dart';

class TeacherProfile extends StatelessWidget {
  final Teacher teacher;

  const TeacherProfile({super.key, required this.teacher});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(teacher.name),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.network(teacher.imageUrl),
            Text(teacher.name),
          ],
        ),
      ),
    );
  }
}
