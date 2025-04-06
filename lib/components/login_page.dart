import 'package:flutter/material.dart';
import 'package:fewwaste/theme/theme.dart';
import 'package:fewwaste/components/main_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // App Name
              Text(
                "Fewaste",
                style: Theme.of(context).textTheme.displayLarge?.copyWith(
                      fontStyle: FontStyle.italic,
                    ),
              ),
              const SizedBox(height: 50),
              // Email Text Field
              TextField(
                decoration: const InputDecoration(
                  labelText: "Email",
                ),
              ),
              const SizedBox(height: 20),
              // Password Text Field
              TextField(
                decoration: const InputDecoration(
                  labelText: "Password",
                ),
              ),
              const SizedBox(height: 20),
              // "Or continue with" Text
              const Text(
                "Or continue with",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 20),
              // Google Sign-in Button
              // ElevatedButton(
              //   onPressed: () {
              //     // Add Google Auth logic here
              //   },
              //   child: Row(
              //     mainAxisSize: MainAxisSize.min,
              //     children: [
              //       Image.asset(
              //         'assets/images/google.png', // Path to Google logo image
              //         height: 30.0,
              //       ),
              //     ],
              //   ),
              // ),
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Image.asset(
                  "lib/assets/images/google.png",
                  height: 40,
                ),
              ),
              const SizedBox(height: 20),
              // Sign-up Link
              TextButton(
                onPressed: () {
                  // Add sign-up navigation logic here
                },
                child: const Text("Don't have an account? Sign up"),
              ),
              const SizedBox(height: 50),
              // Continue Button
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MyAppPage(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  side: BorderSide(
                      color: const Color.fromARGB(255, 189, 189, 189),
                      width: 1),
                  backgroundColor: const Color.fromARGB(255, 0, 0, 0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 100, vertical: 20),
                ),
                child: Text(
                  'Continue',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.darkTheme, // Use the dark theme here
      home: const LoginPage(),
    );
  }
}
