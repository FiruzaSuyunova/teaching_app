import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreateCourse extends StatefulWidget {
  const CreateCourse({super.key});

  @override
  State<CreateCourse> createState() => _CreateCourseState();
}

class _CreateCourseState extends State<CreateCourse> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Yangi kurs qo‘shish (title, video, matn, testlar)"),
      ),
    );
  }
}
