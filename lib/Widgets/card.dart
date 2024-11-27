import 'package:flutter/material.dart';
import 'package:foodgo/taps/card_details.dart';  

class CardWidget extends StatelessWidget {  
  const CardWidget({super.key});  

  @override  
  Widget build(BuildContext context) {  
    final List<Map<String, dynamic>> foodItems = [  
      {'image': 'assets/images/1.png', 'title': "Cheeseburger", 'subtitle': "Wendy's Burger", 'rating': 4.9},  
      {'image': 'assets/images/2.png', 'title': 'Hamburger', 'subtitle': 'Veggie Burger', 'rating': 4.8},  
      {'image': 'assets/images/3.png', 'title': 'Hamburger', 'subtitle': 'Chicken Burger', 'rating': 4.6},  
      {'image': 'assets/images/4.png', 'title': 'Hamburger', 'subtitle': 'Fried Chicken Burger', 'rating': 4.5},  
    ];  

    return GridView.builder(  
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(  
        crossAxisCount: 2,  
        crossAxisSpacing: 10,  
        mainAxisSpacing: 20,  
        childAspectRatio: 0.8,  
      ),  
      itemCount: foodItems.length,  
      itemBuilder: (context, index) {  
        final foodItem = foodItems[index];  

        return GestureDetector(  
          onTap: () {  
            Navigator.push(  
              context,  
              MaterialPageRoute(  
                builder: (context) => CardDetails(
                  image: foodItem['image'],  
                  title: foodItem['title'],  
                  subtitle: foodItem['subtitle'],
                  rating: foodItem['rating'],
                ),  
              ),  
            );  
          },  
          child: Card(  
            elevation: 4,  
            shape: RoundedRectangleBorder(  
              borderRadius: BorderRadius.circular(15),  
            ),  
            child: Padding(  
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),  
              child: Column(  
                crossAxisAlignment: CrossAxisAlignment.start,  
                children: [  
                  Expanded(  
                    child: Center(  
                      child: Image.asset(  
                        foodItem['image']!,  
                        fit: BoxFit.cover,  
                      ),  
                    ),  
                  ),  
                  const SizedBox(height: 8),  
                  Text(  
                    foodItem['title']!,  
                    style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),  
                  ),  
                  const SizedBox(height: 4),  
                  Text(  
                    foodItem['subtitle']!,  
                    style: const TextStyle(fontSize: 14, color: Colors.grey),  
                  ),  
                  const SizedBox(height: 4),  
                  Row(  
                    children: [  
                      Icon(  
                        Icons.star,  
                        size: 15,  
                        color: Colors.yellow[700],  
                      ),  
                      const SizedBox(width: 4),  
                      Text(  
                        foodItem['rating'].toString(),  
                        style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),  
                      ),  
                      const Spacer(),  
                      Icon(Icons.favorite_outline),  
                    ],  
                  ),  
                  const SizedBox(height: 8),  
                ],  
              ),  
            ),  
          ),  
        );  
      },  
    );  
  }  
}