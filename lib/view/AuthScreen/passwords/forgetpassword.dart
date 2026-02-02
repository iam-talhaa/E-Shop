import 'package:e_shop/res/appColor.dart';
import 'package:e_shop/res/components/custom_Editing_controller.dart';
import 'package:e_shop/res/components/roundedButton.dart';
import 'package:flutter/material.dart';

class SendEmailScreen extends StatefulWidget {
  const SendEmailScreen({super.key});

  @override
  State<SendEmailScreen> createState() => _SendEmailScreenState();
}

class _SendEmailScreenState extends State<SendEmailScreen> {
  TextEditingController _EmailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: Icon(Icons.arrow_back_ios)),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          //mainAxisAlignment: .center,
          children: [
            SizedBox(height: 50),

            Align(
              alignment: .topLeft,
              child: Text(
                'Forgot password?',
                style: TextStyle(fontSize: 24, color: Colors.black),
              ),
            ),
            SizedBox(height: 30),
            Text(
              'Enter email associated with your account and we’ll send and email with intructions to reset your password',
              style: TextStyle(fontSize: 18, color: Appcolors.Blackgrey),
            ),
            SizedBox(height: 50),
            CustomTextField(
              onTap: () {},
              controller: _EmailController,
              hintText: "Enter Your Email",
            ),
            SizedBox(height: 50),

            RooundedButon(
              b_text: "Send Code ",
              ontap: () {},
              B_color: Appcolors.Black,
            ),
          ],
        ),
      ),
    );
  }
}
