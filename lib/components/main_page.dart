import 'package:flutter/material.dart';
import 'package:fewwaste/theme/theme.dart';
import 'package:fewwaste/components/tabs/home.dart';
import 'package:fewwaste/components/tabs/rewards.dart';
import 'package:fewwaste/components/tabs/profile.dart';
import 'package:flutter/rendering.dart';

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

  bool _showNavigationBar = true; // For hiding functionality

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NotificationListener<UserScrollNotification>(
        onNotification: (notification) {
          if (notification.direction == ScrollDirection.forward) {
            setState(() => _showNavigationBar = true);
          } else if (notification.direction == ScrollDirection.reverse) {
            setState(() => _showNavigationBar = false);
          }
          return true;
        },
        child: _pages[_currentIndex], // Display the selected page
      ),
      bottomNavigationBar: AnimatedOpacity(
        duration: const Duration(milliseconds: 300),
        opacity: _showNavigationBar ? 1.0 : 0.0, // Transparent effect
        child: BottomNavigationBar(
          currentIndex: _currentIndex,
          backgroundColor: Colors.black.withOpacity(0.5), // Transparent background
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          type: BottomNavigationBarType.fixed,
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
      ),
    );
  }
}
