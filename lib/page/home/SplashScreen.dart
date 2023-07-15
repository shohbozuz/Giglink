import 'dart:async';
import 'package:Giglink.uz/page/home/HomeScreen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 4),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => HomeScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color(0xFF6985e8),
                Color(0xff000000),
              ]),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Image.asset(
                  "asset/img/img.png",
                  height: 300.0,
                  width: 300.0,
                ),
                Text(
                  "Texnologiya yangiliklari, gadjetlar,",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xff0f17ad),
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                ),
                Text(
                  "smartfonlar, maishiy texnika va avtomobillar",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                    fontSize: 15.0,
                  ),
                ),

              ],
            ),
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Color(0xff0f17ad)),
            ),
          ],
        ),
      ),
    );
  }
}
