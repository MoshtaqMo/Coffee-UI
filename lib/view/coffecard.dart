
import 'package:flutter/material.dart';

class CoffeeCard extends StatelessWidget {
  final String? image;
  final String? title;
  final String ?price;
  final String? rating;

   const CoffeeCard(
      {super.key, required this.image,
      required this.title,
      required this.price,
      required this.rating});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 300,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.brown[900],
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black54, 
                      blurRadius: 15.0,
                      spreadRadius: 1.0,  offset: Offset(0, 5),
                    )
                  ]
                ),
                child: Column(
                  children: [
                    ClipRRect(  
                      borderRadius: BorderRadius.circular(20),  
                      child: Image.asset(  
                        "$image",  
                        height: 150,  
                        width: double.infinity,  
                        fit: BoxFit.cover,  
                      ),  
                    ),
                     Padding(  
                      padding: const EdgeInsets.all(8.0),  
                      child: Text(  
                        
                        "$title",  
                        style: const TextStyle(fontSize: 18, color: Colors.white),  
                        textAlign: TextAlign.center,  
                      ),  
                    ),
                    Row(  
                      mainAxisAlignment: MainAxisAlignment.center,  
                        children: List.generate(int.tryParse(rating ?? '0') ?? 0, (index) {  
                        return const Icon(Icons.star, color: Colors.amber, size: 18);  
                      }),  
                    ),
                     Text(  
                      "$price",  
                      style: const TextStyle(fontSize: 16, color: Colors.white70),  
                    ), 
                    const SizedBox(height: 8),  
                    ElevatedButton(  
                      onPressed: () {},  
                      style: ElevatedButton.styleFrom(  
                        shape: const CircleBorder(),  
                        padding: const EdgeInsets.all(12),  
                        backgroundColor: Colors.brown[600],  
                      ),  
                      child: const Icon(Icons.add, color: Colors.white),  
                    ),
              
                  ],
                ),
              
              
              
              ),
            ],
          ),
        ],
      ),
    );
  }
}
