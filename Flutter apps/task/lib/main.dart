import 'package:flutter/material.dart';
import 'package:task/students.dart';
import 'package:task/teachers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'School App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Teacher> teachers = [
    Teacher(
        name: 'Ms. Smith',
        imageUrl:
            'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8dGVhY2hlcnMlMjBwcm9maWxlJTIwcGljdHVyZXN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=800&q=60',
        designation: 'Maths'),
    Teacher(
        name: 'Mr. Johnson',
        imageUrl:
            'https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8dGVhY2hlcnMlMjBwcm9maWxlJTIwcGljdHVyZXN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=800&q=60',
        designation: 'English'),
    Teacher(
        name: 'Ms. Davis',
        imageUrl:
            'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8dGVhY2hlcnMlMjBwcm9maWxlJTIwcGljdHVyZXN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=800&q=60',
        designation: 'Science'),
    Teacher(
        name: 'Dr. Miller',
        imageUrl:
            'https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8dGVhY2hlcnMlMjBwcm9maWxlJTIwcGljdHVyZXN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=800&q=60',
        designation: 'History'),
    Teacher(
        name: 'Prof. Wilson',
        imageUrl:
            'https://images.unsplash.com/photo-1543610892-0b1f7e6d8ac1?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fHRlYWNoZXJzJTIwcHJvZmlsZSUyMHBpY3R1cmVzfGVufDB8fDB8fHww&auto=format&fit=crop&w=800&q=60',
        designation: 'Geography'),
  ];

  List<Student> fifthGradeStudents = [
    Student(
        id: '5A01',
        name: 'John Doe',
        imageUrl:
            'https://plus.unsplash.com/premium_photo-1661335230808-4ab5cd9c9245?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8c3R1ZGVudCUyMGltYWdlc3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=800&q=60',
        subject: 'Maths',
        subjectUrl: 'assets/1.pdf'),
    Student(
        id: '5A02',
        name: 'Jane Smith',
        imageUrl:
            'https://images.unsplash.com/photo-1488751045188-3c55bbf9a3fa?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8c3R1ZGVudCUyMGltYWdlc3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=800&q=60',
        subject: 'English',
        subjectUrl: 'assets/2.pdf'),
    Student(
        id: '5A03',
        name: 'Robert Johnson',
        imageUrl:
            'https://plus.unsplash.com/premium_photo-1661391668947-115099f1010b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8c3R1ZGVudCUyMGltYWdlc3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=800&q=60',
        subject: 'Science',
        subjectUrl: 'assets/3.pdf'),
  ];
  List<Student> sixthGradeStudents = [
    Student(
        id: '6A01',
        name: 'Emily Davis',
        imageUrl:
            'https://plus.unsplash.com/premium_photo-1661377239052-1b8af1d123c7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTd8fHN0dWRlbnQlMjBpbWFnZXN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=800&q=60',
        subject: 'History',
        subjectUrl: 'assets/4.pdf'),
    Student(
        id: '6A02',
        name: 'Michael Miller',
        imageUrl:
            'https://images.unsplash.com/photo-1491975474562-1f4e30bc9468?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fHN0dWRlbnQlMjBpbWFnZXN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=800&q=60',
        subject: 'Geography',
        subjectUrl: 'assets/5.pdf'),
    Student(
        id: '6A03',
        name: 'Sarah Wilson',
        imageUrl:
            'https://plus.unsplash.com/premium_photo-1679162280486-8736450a253a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8c3R1ZGVudHxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=800&q=60',
        subject: 'Maths',
        subjectUrl: 'assets/6.pdf'),
  ];
  List<Student> seventhGradeStudents = [
    Student(
        id: '7A01',
        name: 'James Brown',
        imageUrl:
            'https://images.unsplash.com/photo-1630178836733-3d61d8974258?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8c3R1ZGVudHxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=800&q=60',
        subject: 'English',
        subjectUrl: 'assets/7.pdf'),
    Student(
        id: '7A02',
        name: 'Patricia Taylor',
        imageUrl:
            'https://images.unsplash.com/photo-1567168539593-59673ababaae?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fHN0dWRlbnR8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=800&q=60',
        subject: 'Science',
        subjectUrl: 'assets/8.pdf'),
    Student(
        id: '7A03',
        name: 'David Anderson',
        imageUrl:
            'https://images.unsplash.com/photo-1545696968-1a5245650b36?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzJ8fHN0dWRlbnR8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=800&q=60',
        subject: 'History',
        subjectUrl: 'assets/9.pdf'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('School App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              child: const Text('Students'),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => StudentsPage(
                              fifthGradeStudents: fifthGradeStudents,
                              sixthGradeStudents: sixthGradeStudents,
                              seventhGradeStudents: seventhGradeStudents,
                            ))));
              },
            ),
            ElevatedButton(
              child: const Text('Teachers'),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) =>
                            TeachersPage(teachers: teachers))));
              },
            ),
          ],
        ),
      ),
    );
  }
}

// TODO: Implement Students Page
// TODO: Implement Teachers Page


