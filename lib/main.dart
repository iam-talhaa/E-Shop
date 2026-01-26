import 'package:e_shop/res/components/bottomNavigationBar.dart';
import 'package:e_shop/view/AuthScreen/loginScreen.dart';
import 'package:e_shop/view/AuthScreen/passwords/forgetpassword.dart';
import 'package:e_shop/view/discover/dicover.dart';
import 'package:e_shop/view/homapage/homePage.dart';
import 'package:e_shop/view/myorder/myorder.dart';
import 'package:e_shop/view/profile/profile.dart';
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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyBottomNavigationBar(
        pages: [Homepage(), myOrderScreen(), profileScreen(), dicoverScreen()],
      ),
    );
  }
}
