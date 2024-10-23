import 'package:flutter/material.dart';

class BottomNavigationBarMain extends StatelessWidget {
  final int selectedIndex; 
  final Function(int) onItemTapped; 

  const BottomNavigationBarMain({
    super.key,
    required this.selectedIndex,
    required this.onItemTapped,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Image.asset(
            "assets/home.png",
            width: 24,
            height: 24,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            "assets/search.png",
            width: 24,
            height: 24,
          ),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            "assets/heart.png",
            width: 24,
            height: 24,
          ),
          label: 'Favourites',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            "assets/settings.png",
            width: 24,
            height: 24,
          ),
          label: 'Settings',
        ),
      ],
      currentIndex: selectedIndex, 
      selectedItemColor: Theme.of(context).iconTheme.color,
      onTap: onItemTapped, 
      backgroundColor: Theme.of(context).primaryColor,
    );
  }
}
