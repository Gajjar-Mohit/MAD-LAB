import 'package:flutter/material.dart';
import 'package:task/teacher_profile.dart';

class Teacher {
  final String name;
  final String imageUrl;
  final String designation;

  Teacher(
      {required this.name, required this.imageUrl, required this.designation});
}

class TeachersPage extends StatelessWidget {
  final List<Teacher> teachers;

  const TeachersPage({super.key, required this.teachers});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Teachers'),
      ),
      body: ListView.builder(
        itemCount: teachers.length,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: ((context) =>
                        TeacherProfile(teacher: teachers[index]))),
              );
            },
            leading: CircleAvatar(
                backgroundImage: NetworkImage(teachers[index].imageUrl)),
            title: Text(teachers[index].name),
            subtitle: Text(teachers[index].designation),
          );
        },
      ),
    );
  }
}
