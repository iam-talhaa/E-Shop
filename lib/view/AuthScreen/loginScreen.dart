import 'package:e_shop/res/appColor.dart';
import 'package:e_shop/res/components/custom_Editing_controller.dart';
import 'package:e_shop/res/components/roundedButton.dart';
import 'package:flutter/material.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  TextEditingController _NameController = TextEditingController();
  TextEditingController _EmailController = TextEditingController();
  TextEditingController _PasswordController = TextEditingController();
  TextEditingController _confirmController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height * 1;
    final screenWidth = MediaQuery.of(context).size.width * 1;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            SizedBox(height: 100),
            Text(
              'Create Your \nAccount',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),

            SizedBox(height: 10),
            CustomTextField(
              controller: _NameController,
              hintText: 'Enter your Name',
            ),
            CustomTextField(
              controller: _EmailController,
              hintText: 'Enter your Email',
            ),
            CustomTextField(
              controller: _PasswordController,
              hintText: 'Enter your Password',
            ),
            CustomTextField(
              controller: _confirmController,
              hintText: 'Enter your ConfirmPassword',
            ),
            SizedBox(height: 20),
            RooundedButon(
              b_text: "Log In",
              ontap: () {},
              B_color: Appcolors.Black,
            ),
          ],
        ),
      ),
    );
  }
}
