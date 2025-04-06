import 'package:flutter/material.dart';
import 'package:fewwaste/theme/theme.dart';
import 'package:fewwaste/components/tabs/home.dart';
import 'package:fewwaste/components/tabs/rewards.dart';
import 'package:fewwaste/components/tabs/profile.dart';


class MyAppPage extends StatelessWidget {
  const MyAppPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ewaste App',
      theme: AppTheme.darkTheme, // Apply dark theme
      home: const BottomTabNavigator(),
    );
  }
}

class BottomTabNavigator extends StatefulWidget {
  const BottomTabNavigator({super.key});

  @override
  _BottomTabNavigatorState createState() => _BottomTabNavigatorState();
}

class _BottomTabNavigatorState extends State<BottomTabNavigator> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const HomePage(),
    const ProfilePage(),
    const RewardsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex], // Display the selected page
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Rewards',
          ),
        ],
      ),
    );
  }
}
