import 'package:coffee/widgets/crd.dart';
import 'package:flutter/material.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({super.key});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Order Page'),
      ),
      body: const Center(
        child: Column(
          children: [
            OrderCards(
              title: 'Amricano',
              price: 'Rs 150',
              imagepath: 'assets/images/amricano.jpg',
            ),
            
          ],
        ),
      ),
    );
  }
}