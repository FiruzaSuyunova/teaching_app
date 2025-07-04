import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../home/home_page.dart';




class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool isLogin = true;
  final auth = FirebaseAuth.instance;

  void handleAuth() async {
    final email = emailController.text.trim();
    final password = passwordController.text.trim();

    if (email.isEmpty || password.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Email va parolni kiriting")),
      );
      return;
    }

    try {
      UserCredential user;

      if (isLogin) {
        user = await FirebaseAuth.instance
            .signInWithEmailAndPassword(email: email, password: password);
      } else {
        user = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(email: email, password: password);
      }

      if (user.user != null && mounted) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (_) => const HomePage()),
        );
      }
    } on FirebaseAuthException catch (e) {
      String message;

      if (e.code == 'user-not-found') {
        message = 'Bunday foydalanuvchi topilmadi.';
      } else if (e.code == 'wrong-password') {
        message = 'Parol noto‘g‘ri.';
      } else if (e.code == 'invalid-email') {
        message = 'Email noto‘g‘ri yozilgan.';
      } else if (e.code == 'invalid-credential') {
        message = 'Kirish credentiali buzilgan yoki muddati tugagan.';
      } else {
        message = e.message ?? 'Xatolik yuz berdi.';
      }

      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(isLogin ? 'Kirish' : 'Ro‘yxatdan o‘tish')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: emailController,
              decoration: const InputDecoration(labelText: 'Email'),
            ),
            TextField(
              controller: passwordController,
              decoration: const InputDecoration(labelText: 'Parol'),
              obscureText: true,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: handleAuth,
              child: Text(isLogin ? 'Kirish' : 'Ro‘yxatdan o‘tish'),
            ),
            TextButton(
              onPressed: () => setState(() => isLogin = !isLogin),
              child: Text(isLogin
                  ? "Hisobingiz yo‘qmi? Ro‘yxatdan o‘ting"
                  : "Hisobingiz bor? Kirish"),
            )
          ],
        ),
      ),
    );
  }
}