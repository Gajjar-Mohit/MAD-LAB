import 'package:flutter/material.dart';
import 'package:task/pdf_viewer.dart';
import 'package:task/students.dart';

class StudentProfilePage extends StatelessWidget {
  final Student student;

  const StudentProfilePage({Key? key, required this.student}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(student.name),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              maxRadius: 40,
              backgroundImage: NetworkImage(student.imageUrl),
            ),
            Text('Name: ${student.name}'),
            Text('ID: ${student.id}'),
            Text('Subject: ${student.subject}'),
            ElevatedButton(
              child: const Text('Open Subject Document'),
              onPressed: () {
                Navigator.push(
                    context,
                    (MaterialPageRoute(
                        builder: ((context) => PDFViewer(
                              url: student.subjectUrl,
                            )))));
              },
            ),
          ],
        ),
      ),
    );
  }
}
