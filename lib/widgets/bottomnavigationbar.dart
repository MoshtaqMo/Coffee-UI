import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BottomNavigationBar1 extends StatelessWidget {
  int sized=30;
   BottomNavigationBar1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:CurvedNavigationBar(
        backgroundColor: Colors.deepPurple,
        color: Colors.blueGrey,
        animationDuration: const Duration(milliseconds: 400),
        onTap: (index){
          setState(() {
            sized = 40;
          });
        },
        items:[
           Icon(Icons.home, size: sized.toDouble()),
           Icon(Icons.shopping_cart, size: sized.toDouble()),
           Icon(Icons.favorite, size: sized.toDouble()),
           Icon(Icons.person, size: sized.toDouble()),
        ]
      ),
      

    );
  }
  
  void setState(Null Function() param0) {}
}


// class BottomNavigationBar extends StatelessWidget{
//     int sized=30;
//    return  bottomNavigationBar:CurvedNavigationBar(
//         backgroundColor: Colors.deepPurple,
//         color: Colors.blueGrey,
//         animationDuration: const Duration(milliseconds: 400),
//         onTap: (index){
//           setState(() {
//             sized = 40;
//           });
//         },
//         items:[
//            Icon(Icons.home, size: sized.toDouble()),
//            Icon(Icons.shopping_cart, size: sized.toDouble()),
//            Icon(Icons.favorite, size: sized.toDouble()),
//            Icon(Icons.person, size: sized.toDouble()),
//         ]
//       ),
//       appBar: AppBar(
//         title: const Text("Custom Bottom Navbar"),
//       );
      
    
// }