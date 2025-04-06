import 'package:flutter/material.dart'; // Correct path to your Onboarding widget

import 'package:fewwaste/theme/theme.dart';

import 'on_bording_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login Page',
      theme: AppTheme.darkTheme,
      home: const OnBordingScreen(),
    );
  }
}
