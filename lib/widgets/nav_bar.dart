import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget {
  final int index;
  const BottomNav({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: index,
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.grey,
      onTap: (i) {
        if (i == index) return;

        switch (i) {
          case 0:
            Navigator.pushReplacementNamed(context, "/accueil");
            break;

          case 1:
            Navigator.pushReplacementNamed(context, "/live");
            break;
        }
      },
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.tv), label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.play_circle), label: "Live"),
      ],
    );
  }
}
