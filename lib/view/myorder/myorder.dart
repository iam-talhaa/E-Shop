import 'package:flutter/material.dart';

class myOrderScreen extends StatefulWidget {
  const myOrderScreen({super.key});

  @override
  State<myOrderScreen> createState() => _myOrderScreenState();
}

class _myOrderScreenState extends State<myOrderScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Column(children: [Text("My Order Screen")]));
  }
}
