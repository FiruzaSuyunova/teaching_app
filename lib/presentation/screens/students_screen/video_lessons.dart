import 'package:flutter/material.dart';

class VideoLessons extends StatefulWidget {
  const VideoLessons({super.key});

  @override
  State<VideoLessons> createState() => _VideoLessons();
}

class _VideoLessons extends State<VideoLessons> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("	Video darslar oynasi"),
      ),
    );
  }
}
