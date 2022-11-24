import 'package:attendance_app/screens/loginScreen.dart';
import 'package:attendance_app/screens/mainpage.dart';
import 'package:attendance_app/widgets/TextFieldC.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MainPageScreen() ,// LoginScreen(),
    );
  }
}

