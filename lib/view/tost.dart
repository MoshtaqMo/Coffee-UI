import 'package:coffee/constant/image.dart';
import 'package:coffee/view/shapofbody.dart';
import 'package:flutter/material.dart';

class TostScreen extends StatelessWidget {
  const TostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Espresso'),
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
                path: AppImages.tost,
                title: 'Tost',
                price: '2.0',
                rating: '5',
                ontap: () {},
              ),ShapeBody(
                path: AppImages.tost,
                title: 'Tost',
                price: '2.0',
                rating: '5',
                ontap: () {},
              ),ShapeBody(
                path: AppImages.tost,
                title: 'Tost',
                price: '2.0',
                rating: '5',
                ontap: () {},
              ),ShapeBody(
                path: AppImages.tost,
                title: 'Tost',
                price: '2.0',
                rating: '5',
                ontap: () {},
              ),ShapeBody(
                path: AppImages.tost,
                title: 'Tost',
                price: '2.0',
                rating: '5',
                ontap: () {},
              ),ShapeBody(
                path: AppImages.tost,
                title: 'Tost',
                price: '2.0',
                rating: '5',
                ontap: () {},
              ),
             
            ],
          ),
        ));
  }
}
