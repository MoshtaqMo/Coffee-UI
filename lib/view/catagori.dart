import 'package:flutter/material.dart';

class CategoryList extends StatelessWidget {
  final List<String> categories = [
    'Cappuccino',
    'Amricano',
    'Iced Coffee',
    'Espresso',
    'Tost',
    'Tea'
  ];

   CategoryList({super.key});


  @override
  Widget build(BuildContext context) {
    return  SizedBox(
        width: double.infinity,
        height: 40,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: InkWell(
                onTap: () {
                  
                  if(categories[index] == 'Cappuccino'){
                    Navigator.of(context).pushNamed("cappuccion");
                  }else if(categories[index] == 'Amricano'){
                  
                  Navigator.of(context).pushNamed("amricano");}
                  else if(categories[index] == 'Iced Coffee'){
                    Navigator.of(context).pushNamed("icedcoffee");}
                  else if(categories[index] == 'Espresso'){
                    Navigator.of(context).pushNamed("espresso");
                  } else if(categories[index] == 'Tost'){
                    Navigator.of(context).pushNamed("tost");
                  }
                  else if(categories[index] == 'Tea'){
                    Navigator.of(context).pushNamed("tea");
                  }
                  
                  
                  },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.brown[600],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: Text(
                        categories[index],
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      
    );
  }
}
