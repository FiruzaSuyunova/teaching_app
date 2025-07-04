import 'package:flutter/material.dart';

class MyCourses extends StatefulWidget {
  const MyCourses({super.key});

  @override
  State<MyCourses> createState() => _MyCourses();
}

class _MyCourses extends State<MyCourses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Talabaning o'z kurslari"),
      ),
    );
  }
}
