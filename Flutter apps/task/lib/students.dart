import 'package:flutter/material.dart';
import 'package:task/student_profile.dart';

class Student {
  final String id;
  final String name;
  final String imageUrl;
  final String subject;
  final String subjectUrl;

  Student(
      {required this.subjectUrl,
      required this.id,
      required this.subject,
      required this.name,
      required this.imageUrl});
}

class StudentsPage extends StatelessWidget {
  final List<Student> fifthGradeStudents;
  final List<Student> sixthGradeStudents;
  final List<Student> seventhGradeStudents;

  const StudentsPage(
      {super.key,
      required this.fifthGradeStudents,
      required this.sixthGradeStudents,
      required this.seventhGradeStudents});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Students Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Fifth Grade Students'),
            ListView.builder(
              shrinkWrap: true,
              itemCount: fifthGradeStudents.length,
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: ((context) => StudentProfilePage(student: fifthGradeStudents[index]))));
                  },
                  title: Text(fifthGradeStudents[index].name),
                  leading: CircleAvatar(
                    backgroundImage:
                        NetworkImage(fifthGradeStudents[index].imageUrl),
                  ),
                );
              },
            ),
            const Text('Sixth Grade Students'),
            ListView.builder(
              shrinkWrap: true,
              itemCount: sixthGradeStudents.length,
              itemBuilder: (context, index) {
                return ListTile(
                   onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => StudentProfilePage(
                                student: sixthGradeStudents[index]))));
                  },
                  title: Text(sixthGradeStudents[index].name),
                  leading: CircleAvatar(
                    backgroundImage:
                        NetworkImage(sixthGradeStudents[index].imageUrl),
                  ),
                );
              },
            ),
            const Text('Seventh Grade Students'),
            ListView.builder(
              shrinkWrap: true,
              itemCount: seventhGradeStudents.length,
              itemBuilder: (context, index) {
                return ListTile(
                   onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => StudentProfilePage(
                                student: seventhGradeStudents[index]))));
                  },
                  title: Text(seventhGradeStudents[index].name),
                  leading: CircleAvatar(
                    backgroundImage:
                        NetworkImage(seventhGradeStudents[index].imageUrl),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
