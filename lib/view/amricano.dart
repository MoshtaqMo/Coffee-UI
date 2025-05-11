import 'package:coffee/constant/image.dart';
import 'package:coffee/view/shapofbody.dart';
import 'package:flutter/material.dart';

class Amricano extends StatelessWidget {
  const Amricano({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Amricano'),
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
                path: AppImages.amricano,
                title: 'amricano',
                price: '2.4',
                rating: '4', ontap: () { 
                  
                 },
              ),
              ShapeBody(
                path: AppImages.amricano,
                title: 'amricano',
                price: '2.4',
                rating: '4',
                ontap: () { 
                  
                 },
              ), ShapeBody(
                path: AppImages.amricano,
                title: 'amricano',
                price: '2.4',
                rating: '4', ontap: () { 
                
                 },
              ),
              ShapeBody(
                path: AppImages.amricano,
                title: 'amricano',
                price: '2.4',
                rating: '4',
                ontap: () { 
                
                 },
              ), ShapeBody(
                path: AppImages.amricano,
                title: 'amricano',
                price: '2.4',
                rating: '4', ontap: () { 
                
                 },
              ),
              ShapeBody(
                path: AppImages.amricano,
                title: 'amricano',
                price: '2.4',
                rating: '4',
                ontap: () { 
                 
                 },
              ),
              
            ],
          ),
        ));
  }
}
