import 'package:coffee/home.dart';
import 'package:coffee/menu.dart';

import 'package:coffee/view/amricano.dart';
import 'package:coffee/view/cappuccion.dart';
import 'package:coffee/view/espresso.dart';
import 'package:coffee/view/icedcoffee.dart';
import 'package:coffee/view/orderpage.dart';
import 'package:coffee/view/tea.dart';
import 'package:coffee/view/tost.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Coffee Shop',
      theme: ThemeData.dark(),
      // home: const OrderPage(),
      home: const Home(),
      routes: {
        '/menu': (context) => MenuScreen(),
        'amricano': (context) => const Amricano(),
        'cappuccion': (context) => const Cappuccion(),
        'espresso': (context) => const Espresso(),
        'icedcoffee': (context) => const Icedcoffee(),
        'tost': (context) => const TostScreen(),
        'tea': (context) => const TeaScreen(),
        'orderpage': (context) => const OrderPage(),
      },
    );
  }
}
