import 'package:e_shop/res/appColor.dart';
import 'package:e_shop/res/components/custom_Editing_controller.dart';
import 'package:e_shop/res/components/roundedButton.dart';
import 'package:e_shop/view/AuthScreen/signUpScreen.dart';
import 'package:flutter/material.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  TextEditingController _EmailController = TextEditingController();
  TextEditingController _PasswordController = TextEditingController();
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
            Align(
              alignment: .topLeft,
              child: Text(
                'Log into \nYour Account',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 70),

            CustomTextField(
              controller: _EmailController,
              hintText: 'Enter your Email',
            ),
            CustomTextField(
              controller: _PasswordController,
              hintText: 'Enter your Password',
            ),

            Align(
              alignment: .centerRight,
              child: Text('Forgot Password?', style: TextStyle(fontSize: 16)),
            ),

            RooundedButon(
              b_text: "Log In",
              ontap: () {},
              B_color: Appcolors.Black,
            ),
            SizedBox(height: 20),

            Text('Or Sign In With', style: TextStyle(fontSize: 16)),
            SizedBox(height: 20),

            Row(
              mainAxisAlignment: .center,
              children: [
                Container(
                  height: 60,
                  width: 80,
                  decoration: BoxDecoration(
                    shape: .circle,
                    border: Border.all(color: Appcolors.Grey, width: 2),
                    // color: Appcolors.Black,
                    //borderRadius: BorderRadius.circular(20),
                  ),

                  child: Image(height: 80, image: AssetImage('assets/i.png')),
                ),
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    shape: .circle,
                    border: Border.all(color: Appcolors.Grey, width: 2),
                    // color: Appcolors.Black,
                    //borderRadius: BorderRadius.circular(20),
                  ),

                  child: Image(height: 50, image: AssetImage('assets/g.png')),
                ),
                Container(
                  height: 60,
                  width: 80,
                  decoration: BoxDecoration(
                    shape: .circle,
                    border: Border.all(color: Appcolors.Grey, width: 2),
                    // color: Appcolors.Black,
                    //borderRadius: BorderRadius.circular(20),
                  ),

                  child: Icon(
                    Icons.facebook_outlined,
                    size: 50,
                    color: Colors.blueAccent,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: .center,
              children: [
                Text('Dont have an account?', style: TextStyle(fontSize: 16)),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Signupscreen()),
                    );
                  },
                  child: Text("Sign Up"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
