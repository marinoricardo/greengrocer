import 'package:flutter/material.dart';
import 'package:greengrocer/src/auth/sign_in_screen.dart';
import 'package:greengrocer/src/config/custom_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Greengrocer',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: CustomColors.customSwatchColor,
      ),
      home: const SignInScreen(),
    );
  }
}
