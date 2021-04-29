import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:write_on_app/screens/home_page.dart';

void main() {
  runApp(SplashScreen());
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AnimatedSplashScreen(
        backgroundColor: Colors.grey[200],
        splash: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'SuperNote',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0,
                    letterSpacing: 1.6),
              ),
              Image(
                image: AssetImage('assets/note2.png'),
                height: 40.0,
                width: 40.0,
              )
            ],
          ),
        ),
        nextScreen: HomePage(),
        splashTransition: SplashTransition.slideTransition,
      ),
    );
  }
}
