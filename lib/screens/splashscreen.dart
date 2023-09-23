import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:abo_shokor_home/screens/loginscreen.dart';
import 'package:abo_shokor_home/screens/homescreen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        splashIconSize: 500,
        backgroundColor: Colors.white,
        duration: 3000,
        splash: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Column(
              children: [
                Image.asset('assets/logo.jpg'),
              ],
            )),
        nextScreen: //FirebaseAuth.instance.currentUser == null
            const LoginScreen());
  }
}
