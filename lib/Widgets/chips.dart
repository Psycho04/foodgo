import 'package:flutter/material.dart';

class ChipsWidget extends StatefulWidget {
  const ChipsWidget({super.key});

  @override
  State<ChipsWidget> createState() => _ChipsWidgetState();
}

class _ChipsWidgetState extends State<ChipsWidget> {
  final List<String> categories = ['All', 'Combos', 'Sliders', 'Classic'];
  String selectedCategory = 'All';
  @override
  Widget build(BuildContext context) {
    return Row(
      children: categories.map((category) {
        return _buildChip(category);
      }).toList(),
    );
  }
   Widget _buildChip(String label) {
    final bool isSelected = label == selectedCategory;
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedCategory = label;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6),
        child: Chip(
          label: Text(
            label,
            style: TextStyle(
              color: isSelected ? Colors.white : Colors.black,
            ),
          ),
          backgroundColor:
              isSelected ? const Color(0xffe84438) : Colors.grey[200],
          padding: const EdgeInsets.symmetric(horizontal: 23, vertical: 12),
          shape: RoundedRectangleBorder(
            side: const BorderSide(color: Colors.white, width: 0),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }
}