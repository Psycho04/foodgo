import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Color(0xffe84438),
      shape: const CircularNotchedRectangle(),
      notchMargin: 12,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildIcon(Icons.home, Icons.home_outlined, 0),
          _buildIcon(Icons.person, Icons.person_2_outlined, 1),
          const SizedBox(width: 20),
          _buildIcon(Icons.chat, Icons.chat_outlined, 2),
          _buildIcon(Icons.favorite, Icons.favorite_outline, 3),
        ],
      ),
    );
  }

  Widget _buildIcon(IconData filledIcon, IconData outlinedIcon, int index) {
    return IconButton(
      icon: Icon(
        _selectedIndex == index ? filledIcon : outlinedIcon,
        color: _selectedIndex == index ? Colors.white : Colors.white70,
      ),
      onPressed: () {
        setState(() {
          _selectedIndex = index;
        });
      },
    );
  }
}