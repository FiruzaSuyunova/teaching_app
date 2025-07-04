import 'package:flutter/material.dart';

class StudentPerformance extends StatefulWidget {
  const StudentPerformance({super.key});

  @override
  State<StudentPerformance> createState() => _StudentPerformance();
}

class _StudentPerformance extends State<StudentPerformance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("O‘quvchilarning natijalari"),
      ),
    );
  }
}
