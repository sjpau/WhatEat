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
    final theme = Theme.of(context);

    return BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: ColorFiltered(
            colorFilter: ColorFilter.mode(
              selectedIndex == 0 ? theme.colorScheme.secondary : theme.iconTheme.color!,
              BlendMode.srcIn,
            ),
            child: Image.asset(
              "assets/search.png",
              width: 24,
              height: 24,
            ),
          ),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: ColorFiltered(
            colorFilter: ColorFilter.mode(
              selectedIndex == 1 ? theme.colorScheme.secondary : theme.iconTheme.color!,
              BlendMode.srcIn,
            ),
            child: Image.asset(
              "assets/heart.png",
              width: 24,
              height: 24,
            ),
          ),
          label: 'Favourites',
        ),
        BottomNavigationBarItem(
          icon: ColorFiltered(
            colorFilter: ColorFilter.mode(
              selectedIndex == 2 ? theme.colorScheme.secondary : theme.iconTheme.color!,
              BlendMode.srcIn,
            ),
            child: Image.asset(
              "assets/settings.png",
              width: 24,
              height: 24,
            ),
          ),
          label: 'Settings',
        ),
      ],
      currentIndex: selectedIndex,
      selectedItemColor: theme.colorScheme.secondary,
      unselectedItemColor: theme.iconTheme.color,
      onTap: onItemTapped,
    );
  }
}
