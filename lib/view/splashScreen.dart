import 'package:flutter/material.dart';


class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(body: SafeArea(
      child: PageView(children: [
        Text('One'),
        Text('Two'),
        Text('Three'),
      ],),
    ));
  }
}