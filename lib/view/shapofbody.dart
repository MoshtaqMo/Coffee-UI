import 'package:coffee/view/showphot.dart';
import 'package:flutter/material.dart';

class ShapeBody extends StatelessWidget {
  final String? path;
  final String? title;
  final String? price;
  final String? rating;
  final void Function()? ontap;

  const ShapeBody({super.key, required this.path,required this.title,required this.price,required this.rating,required this.ontap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          InkWell(
            onTap: ontap,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.brown[600],
                borderRadius: BorderRadius.circular(50),
                border: Border.all(color: Colors.white),
              ),
              height: 260,
              width: 150,
              child: Padding(
                padding: const EdgeInsets.only(top: 150),
                child: Column(
                  children: [
                     Text("$title"),
                     Row(  
                        mainAxisAlignment: MainAxisAlignment.center,  
                          children: List.generate(int.tryParse(rating ?? '0') ?? 0, (index) {  
                          return const Icon(Icons.star, color: Colors.amber, size: 18);  
                        }),  
                      ),
                     Text(" \$ $price"),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      onPressed: () {
            Navigator.of(context).pushNamed('orderpage');

                      },
                      child: const Icon(Icons.add),
                    ),
                  ],
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PhotoViewScreen(
                    imagePath: path ?? '',
                  ),
                ),
              );
            },
            child: Container(
              alignment: Alignment.topCenter,
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(color: Colors.white),
                image: DecorationImage(
                  image: AssetImage(path ?? ''),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}