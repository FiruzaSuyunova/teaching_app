
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:teaching_app/presentation/screens/login_screen/login_page.dart';
import '../../core/logo/logo_for_welcome_page.dart';



class WelcomeScreen extends StatefulWidget {


  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {

  @override
  void initState() {
    super.initState();
    goToNextPage();
  }

  void goToNextPage(){
    Future.delayed(Duration(seconds: 4),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>const LoginPage()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1a1a1a),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const AnimatedLinguaLogo(size: 200),
            const SizedBox(height: 20),
            Text(
              'Lingua',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: const Color(0xFF90EE90),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
