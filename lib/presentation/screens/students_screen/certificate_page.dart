import 'package:flutter/material.dart';

class CertificatePage extends StatefulWidget {
  const CertificatePage({super.key});

  @override
  State<CertificatePage> createState() => _CertificatePage();
}

class _CertificatePage extends State<CertificatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Tugatilgan kurs uchun sertificatlar"),
      ),
    );
  }
}
