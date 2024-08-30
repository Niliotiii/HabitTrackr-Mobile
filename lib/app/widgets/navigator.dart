import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  CustomBottomNavBar({required this.selectedIndex, required this.onItemTapped});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.white,
      shape: CircularNotchedRectangle(),
      notchMargin: 8.0,
      elevation: 10.0, // Define a sombra (maior valor, maior a sombra)
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () => onItemTapped(0),
              color: selectedIndex == 0 ? Colors.blue : Colors.grey,
            ),
            IconButton(
              icon: Icon(Icons.check_circle_outline),
              onPressed: () => onItemTapped(1),
              color: selectedIndex == 1 ? Colors.blue : Colors.grey,
            ),
            SizedBox(width: 40), // Espaço para o botão central
            IconButton(
              icon: Icon(Icons.people),
              onPressed: () => onItemTapped(2),
              color: selectedIndex == 2 ? Colors.blue : Colors.grey,
            ),
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () => onItemTapped(3),
              color: selectedIndex == 3 ? Colors.blue : Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}


class CustomFab extends StatelessWidget {
  final Function onFabPressed;

  CustomFab({required this.onFabPressed});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onFabPressed as void Function()?,
      tooltip: 'Add',
      backgroundColor: Colors.blue,
      child: Icon(
        Icons.add,
        color: Colors.white,
      ),
      shape: CircleBorder(),
      elevation: 2.0,
    );
  }
}

