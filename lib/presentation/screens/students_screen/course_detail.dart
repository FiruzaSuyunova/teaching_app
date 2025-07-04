import 'package:flutter/material.dart';

class CourseDetail extends StatefulWidget {
  const CourseDetail({super.key});

  @override
  State<CourseDetail> createState() => _CourseDetail();
}

class _CourseDetail extends State<CourseDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Kursga oid batafsil ma'lumotlar"),
      ),
    );
  }
}
