import 'package:flutter/material.dart';
import 'today.dart'; // Ensure this imports your Today screen
import '../widgets/navigator.dart'; // Import your custom navigator

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  // List of screens for bottom navigation items
  final List<Widget> _pages = <Widget>[
    Today(), // The Today screen
    Center(child: Text('Página 1')), // Placeholder for the second screen
    Center(child: Text('Página 2')), // Placeholder for the third screen
    Center(child: Text('Página 3')), // Placeholder for the fourth screen
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex], // Display the selected page
      floatingActionButton: CustomFab(
        onFabPressed: () {
          // Action for the central floating button
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
