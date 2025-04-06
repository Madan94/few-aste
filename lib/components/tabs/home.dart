import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home",
        style: TextStyle(
          fontStyle: FontStyle.italic,
        )
        ),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Add Scan Ewaste logic here
          },
          style: ElevatedButton.styleFrom(
            side: BorderSide(
            color: const Color.fromARGB(255, 189, 189, 189),
            width: 1),
            backgroundColor: const Color.fromARGB(255, 0, 0, 0),
            padding: const EdgeInsets.all(50),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Icon(Icons.camera_alt, size: 40, color: Colors.white),
              SizedBox(height: 10),
              Text(
                "Scan Ewaste",
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
