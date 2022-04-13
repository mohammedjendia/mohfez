import 'package:final_project/home.dart';
import 'package:final_project/sons_screen.dart';
import 'package:final_project/teacher_data.dart';
import 'package:final_project/teatcher_profile.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner:false ,
      theme: ThemeData(
        fontFamily: "PNU",
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.green,
        ),
      ),
      home:  const Directionality(
          textDirection: TextDirection.rtl, child: Sons_Screen()),

    );
  }
}

