import 'package:coffee/constant/image.dart';
import 'package:coffee/view/shapofbody.dart';
import 'package:flutter/material.dart';

class Cappuccion extends StatelessWidget {
  const Cappuccion({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          shadowColor: Colors.brown[600],
          backgroundColor: Colors.brown[600],
          title: const Text('Cappuccion'),
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
            children: [
              ShapeBody(
                path: AppImages.cappuccion,
                title: 'cappuccion',
                price: '3.0',
                rating: '5',
                ontap: () {},
              ),
              ShapeBody(
                path: AppImages.cappuccion,
                title: 'cappuccion',
                price: '3.0',
                rating: '5',
                ontap: () {},
              ),
              ShapeBody(
                path: AppImages.cappuccion,
                title: 'cappuccion',
                price: '3.0',
                rating: '5',
                ontap: () {},
              ),
              ShapeBody(
                path: AppImages.cappuccion,
                title: 'cappuccion',
                price: '3.0',
                rating: '5',
                ontap: () {},
              ),
              ShapeBody(
                path: AppImages.cappuccion,
                title: 'cappuccion',
                price: '3.0',
                rating: '5',
                ontap: () {},
              ),
            ],
          ),
        ));
  }
}
