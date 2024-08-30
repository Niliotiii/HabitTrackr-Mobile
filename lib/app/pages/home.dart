import 'package:flutter/material.dart';
import 'today.dart';
import '../widgets/navigator.dart';
import 'new-habit.dart';
import 'allHabits.dart';
import 'friends.dart';
import 'perfil.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  final List<Widget> _pages = <Widget>[
    Today(),
    AllHabitsScreen(),
    FriendsPage(),
    Perfil(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      floatingActionButton: CustomFab(
        onFabPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => NewHabitPage()),
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: CustomBottomNavBar(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
    );
  }
}
