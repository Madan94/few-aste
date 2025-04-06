import 'package:flutter/material.dart';

class Intorpage1 extends StatelessWidget {
  const Intorpage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Center(
        child: Image.asset(
          'lib/assets/images/google.png', // Replace with your actual image path
          fit: BoxFit.cover,      // Optional: scale image
          width: 200,             // Optional: set image width
          height: 200,            // Optional: set image height
        ),
      ),
    );
  }
}
