import 'package:flutter/material.dart';

class ManageCourses extends StatefulWidget {
  const ManageCourses({super.key});

  @override
  State<ManageCourses> createState() => _ManageCourses();
}

class _ManageCourses extends State<ManageCourses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("	Mavjud kurslarni tahrirlash yoki o‘chirish"),
      ),
    );
  }
}
