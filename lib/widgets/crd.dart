import 'package:flutter/material.dart';

class OrderCards extends StatelessWidget {
 final String? title;
 final String? price;
 final String? imagepath;
   const OrderCards({super.key,required this.title,required this.price,required this.imagepath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Order Page'),
      ),

      body: Column(
        children: [
          Card(
            child: ListTile(
              title:Text('$title'),
              trailing: Image.asset("$imagepath"),
              subtitle: Text("$price"),

            ),
          )
        
        ],
      ),

    );
  }
  

}
 
 