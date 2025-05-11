import 'package:coffee/constant/image.dart';
import 'package:coffee/view/shapofbody.dart';
import 'package:flutter/material.dart';

class Icedcoffee extends StatelessWidget {
  const Icedcoffee({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Icedcoffee'),
        ),
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(AppImages.logo1),
              fit: BoxFit.cover,
            ),
          ),
          child: ListWheelScrollView(
            itemExtent: 300,
            children:  [
                
                    ShapeBody(
                          path: AppImages.icedcoffee,
                          title: 'icedcoffee',
                          price: '1.5',
                          rating: '2', ontap: () {  },
                        ),ShapeBody(
                          path: AppImages.icedcoffee,
                          title: 'icedcoffee',
                          price: '1.5',
                          rating: '2', ontap: () {  },
                        ),ShapeBody(
                          path: AppImages.icedcoffee,
                          title: 'icedcoffee',
                          price: '1.5',
                          rating: '2', ontap: () {  },
                        ),ShapeBody(
                          path: AppImages.icedcoffee,
                          title: 'icedcoffee',
                          price: '1.5',
                          rating: '2', ontap: () {  },
                        ),ShapeBody(
                          path: AppImages.icedcoffee,
                          title: 'icedcoffee',
                          price: '1.5',
                          rating: '2', ontap: () {  },
                        ),
                  
              
            ],
          ),
        ));
  }
}
