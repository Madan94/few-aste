import 'package:flutter/material.dart';

class RewardsPage extends StatelessWidget {
  const RewardsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Rewards",style: TextStyle(
          fontStyle: FontStyle.italic,
        )
        ),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          "Coming soon with web3",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
