import 'package:flutter/material.dart';
import 'package:foodgo/Utilities/text_style.dart';
import 'package:foodgo/Widgets/bottom_nav.dart';
import 'package:foodgo/Widgets/card.dart';
import 'package:foodgo/Widgets/chips.dart';
import 'package:foodgo/Widgets/search.dart';

class HomeTap extends StatefulWidget {
  const HomeTap({super.key});

  @override
  State<HomeTap> createState() => _HomeTapState();
}

class _HomeTapState extends State<HomeTap> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 20,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        shape: const CircleBorder(),
        backgroundColor: const Color(0xffe84438),
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: const BottomNavBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('FoodGo', style: AppTextStyles.foodGoTitle),
            Text('Order your favorite food!', style: AppTextStyles.subtitle),
            const SizedBox(height: 20),
            SearchWidget(),
            const SizedBox(height: 30),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: ChipsWidget(),
            ),
            const SizedBox(height: 30),
            Expanded(child: CardWidget())
          ],
        ),
      ),
    );
  }
}