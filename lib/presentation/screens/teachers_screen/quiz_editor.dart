import 'package:flutter/material.dart';

class QuizEditor extends StatefulWidget {
  const QuizEditor({super.key});

  @override
  State<QuizEditor> createState() => _QuizEditor();
}

class _QuizEditor extends State<QuizEditor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Har bir kurs uchun test tuzish"),
      ),
    );
  }
}
