import 'package:e_shop/view/AuthScreen/loginScreen.dart';
import 'package:e_shop/view/splashScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(E_shop());
}

class E_shop extends StatefulWidget {
  const E_shop({super.key});

  @override
  State<E_shop> createState() => _E_shopState();
}

class _E_shopState extends State<E_shop> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Loginscreen(),
    );
  }
}
