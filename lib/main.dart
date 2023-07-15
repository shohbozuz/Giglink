import 'package:Giglink.uz/colors/colors.dart';
import 'package:Giglink.uz/page/home/SplashScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


void main(){
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: AppColor.bar
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
        return MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
        primarySwatch: MaterialColor(0xFF6985e8, <int, Color>{
    50: Color(0xFFE8EAF6),
    100: Color(0xFFC5CAE9),
    200: Color(0xFF9FA8DA),
    300: Color(0xFF7986CB),
    400: Color(0xFF5C6BC0),
    500: Color(0xFF3F51B5),
    600: Color(0xFF394AAE),
    700: Color(0xFF3140A5),
    800: Color(0xFF29379D),
    900: Color(0xFF1B278D),
    }),
    ),

      home: SplashScreen(),
    );
  }
}



