import 'package:coffee/constant/image.dart';
import 'package:coffee/view/catagori.dart';
import 'package:coffee/view/shapofbody.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MenuScreen extends StatelessWidget {
  final void Function()? onPressed1;
  final void Function()? ontap;
  int sized = 30;
   MenuScreen({super.key, this.onPressed1, this.ontap});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.brown[600],
        backgroundColor: Colors.brown[600],
        title: const Text('Coffeing Dreems'),
        actions: [
          IconButton(icon: const Icon(Icons.notifications), onPressed: () {
          }),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(

            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppImages.logo1),
                fit: BoxFit.cover,
              ),
            ),

          child: Column(
            children: [
              // const SearchBar(
              //   hintText: 'Find your coffee',
              // ),
              const SizedBox(height: 20),
              CategoryList(),
              Center(
                child: InkWell(
                  onTap: ontap,
                  child:  Wrap(
                    spacing: 20.0, // horizontal spacing between widgets
                    runSpacing: 20.0,
                    children: [
                      ShapeBody(
                        path: AppImages.amricano,
                        title: 'amricano',
                        price: '2.4',
                        rating: '4', ontap: () { 
                          Navigator.of(context).pushNamed("amricano");
                         },
                      ),
                      ShapeBody(
                        path: AppImages.cappuccion,
                        title: 'cappuccion',
                        price: '3.0',
                        rating: '5', ontap: () { 
                          Navigator.of(context).pushNamed("cappuccion");
                         },
                      ),
                      ShapeBody(
                        path: AppImages.espresso,
                        title: 'espresso',
                        price: '4.0',
                        rating: '5', ontap: () { 
                          Navigator.of(context).pushNamed("espresso");
                         },
                      ),
                      ShapeBody(
                        path: AppImages.icedcoffee,
                        title: 'icedcoffee',
                        price: '1.5',
                        rating: '2', ontap: () { 
                          Navigator.of(context).pushNamed("icedcoffee");
                         },
                      ), 
                      ShapeBody(
                  path: AppImages.tost,
                  title: 'Tost',
                  price: '2.0',
                  rating: '5',
                  ontap: () {
                    Navigator.of(context).pushNamed('tost');
                  },
                ),
                 ShapeBody(
                  path: AppImages.tea,
                  title: 'Tea',
                  price: '2.0',
                  rating: '5',
                  ontap: () {
                    Navigator.of(context).pushNamed('tea');
                  },
                ), ShapeBody(
                        path: AppImages.amricano,
                        title: 'amricano',
                        price: '2.4',
                        rating: '4', ontap: () { 
                          Navigator.of(context).pushNamed("amricano");
                         },
                      ),
                      ShapeBody(
                        path: AppImages.cappuccion,
                        title: 'cappuccion',
                        price: '3.0',
                        rating: '5', ontap: () { 
                          Navigator.of(context).pushNamed("cappuccion");
                         },
                      ),
                      ShapeBody(
                        path: AppImages.espresso,
                        title: 'espresso',
                        price: '4.0',
                        rating: '5', ontap: () { 
                          Navigator.of(context).pushNamed("espresso");
                         },
                      ),
                      ShapeBody(
                        path: AppImages.icedcoffee,
                        title: 'icedcoffee',
                        price: '1.5',
                        rating: '2', ontap: () { 
                          Navigator.of(context).pushNamed("icedcoffee");
                         },
                      ), 
                      ShapeBody(
                  path: AppImages.tost,
                  title: 'Tost',
                  price: '2.0',
                  rating: '5',
                  ontap: () {
                    Navigator.of(context).pushNamed('tost');
                  },
                ),
                 ShapeBody(
                  path: AppImages.tea,
                  title: 'Tea',
                  price: '2.0',
                  rating: '5',
                  ontap: () {
                    Navigator.of(context).pushNamed('tea');
                  },
                ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        height: 60,
          backgroundColor:  Colors.brown[600] ?? Colors.brown,
          color: Colors.blueGrey,
          animationDuration: const Duration(milliseconds: 400),
          onTap: (index) {
            setState(() {
              sized = 40;
            });
          },
          items: [
            InkWell(
              
              child: Icon(Icons.home, size: sized.toDouble())),
            Icon(Icons.shopping_cart, size: sized.toDouble()),
            Icon(Icons.favorite, size: sized.toDouble()),
            Icon(Icons.person, size: sized.toDouble()),
          ]),
    );
  }

  void setState(Null Function() param0) {}
}
