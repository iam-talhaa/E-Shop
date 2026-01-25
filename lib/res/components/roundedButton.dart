import 'package:e_shop/res/appColor.dart';
import 'package:flutter/material.dart';

class RooundedButon extends StatelessWidget {
  VoidCallback ontap;
  final String b_text;
  Color B_color;
  RooundedButon({
    super.key,
    required this.b_text,
    required this.ontap,
    required this.B_color,
  });

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height * 1;
    final screenWidth = MediaQuery.of(context).size.width * 1;
    return GestureDetector(
      onTap: ontap,
      child: Container(
        child: Center(
          child: Text(
            b_text,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              letterSpacing: 0,
              color: Appcolors.White,
            ),
          ),
        ),

        height: screenHeight / 15,
        width: screenWidth / 2,
        decoration: BoxDecoration(
          borderRadius: .circular(30),
          color: B_color,
          border: .all(color: Appcolors.White, width: 2),
        ),
      ),
    );
  }
}
