import 'package:e_shop/res/appColor.dart';
import 'package:e_shop/res/components/custom_Editing_controller.dart';
import 'package:e_shop/res/components/roundedButton.dart';
import 'package:e_shop/view/AuthScreen/loginScreen.dart';
import 'package:flutter/material.dart';

class Signupscreen extends StatefulWidget {
  const Signupscreen({super.key});

  @override
  State<Signupscreen> createState() => _SignupscreenState();
}

class _SignupscreenState extends State<Signupscreen> {
  TextEditingController _NameController = TextEditingController();
  TextEditingController _EmailController = TextEditingController();
  TextEditingController _PasswordController = TextEditingController();
  TextEditingController _confirmController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            SizedBox(height: 100),
            Align(
              alignment: .topLeft,
              child: Text(
                'Create Your \nAccount',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 20),

            SizedBox(height: 10),
            CustomTextField(
              onTap: () {},
              controller: _NameController,
              hintText: 'Enter your Name',
            ),
            CustomTextField(
              onTap: () {},
              controller: _EmailController,
              hintText: 'Enter your Email',
            ),
            CustomTextField(
              onTap: () {},
              controller: _PasswordController,
              hintText: 'Enter your Password',
            ),
            CustomTextField(
              onTap: () {},
              controller: _confirmController,
              hintText: 'Enter your ConfirmPassword',
            ),
            SizedBox(height: 20),
            RooundedButon(
              b_text: "Log In",
              ontap: () {},
              B_color: Appcolors.Black,
            ),
            SizedBox(height: 20),

            Text('Or Sign Up With', style: TextStyle(fontSize: 16)),
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
                Text(
                  'Already have an account?',
                  style: TextStyle(fontSize: 16),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Loginscreen()),
                    );
                  },
                  child: Text("Login"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
