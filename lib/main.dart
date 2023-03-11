import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kata/screens/splash.dart';
import 'package:kata/utils/style.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(textTheme: TextTheme(bodyText2: textStyle())),
      home: const SpalshScreen(),
    );
  }
}
