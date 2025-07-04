
import 'package:flutter/material.dart';

class TeachersHomeScreen extends StatefulWidget {
  const TeachersHomeScreen({super.key});

  @override
  State<TeachersHomeScreen> createState() => _TeachersHomeScreen();
}

class _TeachersHomeScreen extends State<TeachersHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("	Kurslar statistikasi, yangi o'quvchilar"),
      ),
    );
  }
}
