import 'package:flutter/material.dart';

class StudentsHomePage extends StatefulWidget {
  const StudentsHomePage({super.key});

  @override
  State<StudentsHomePage> createState() => _StudentsHomePage();
}

class _StudentsHomePage extends State<StudentsHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("	Kurslar ro'yxati, banner, o'qishni davom ettirish"),
      ),
    );
  }
}
