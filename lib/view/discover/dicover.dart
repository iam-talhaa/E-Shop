import 'package:e_shop/res/appColor.dart';
import 'package:e_shop/res/components/custom_Editing_controller.dart';
import 'package:flutter/material.dart';

class dicoverScreen extends StatefulWidget {
  const dicoverScreen({super.key});

  @override
  State<dicoverScreen> createState() => _dicoverScreenState();
}

class _dicoverScreenState extends State<dicoverScreen> {
  int selectedindex = -1;
  TextEditingController _SearchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height * 1;
    final Screenwidth = MediaQuery.of(context).size.width * 1;

    return Scaffold(
      appBar: AppBar(
        title: Text("Discover"),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.notification_add)),
        ],
      ),
      body: Column(
        children: [
          Container(
            // height: 200,
            width: double.infinity,
            decoration: const BoxDecoration(),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: .start,
                children: [
                  // Search TextField
                  Expanded(
                    child: CustomTextField(
                      controller: _SearchController,
                      hintText: "Search",
                    ),
                  ),

                  const SizedBox(width: 10),

                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      //color: Appcolors.Grey,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Appcolors.Black),
                    ),
                    child: Image(image: AssetImage('assets/filter.png')),
                  ),
                  // Send Button
                  // IconButton(
                  //   onPressed: () {
                  //     print("Send clicked");
                  //   },
                  //   icon: const Icon(Icons.send, color: Colors.white),
                  // ),
                ],
              ),
            ),
          ),
          for (int i = 0; i <= 3; i++)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onDoubleTap: () {
                  setState(() {
                    selectedindex = i;
                  });
                },
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 100),
                  height: screenHeight / 7,

                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: i == 0
                        ? Appcolors.Green_type
                        : i == 1
                        ? Appcolors.LightBrown
                        : i == 2
                        ? Appcolors.Grey
                        : Appcolors.Pink,
                  ),
                  child: Column(
                    mainAxisAlignment: .center,
                    children: [
                      Row(
                        crossAxisAlignment: .start,
                        mainAxisAlignment: .spaceBetween,

                        children: [
                          SizedBox(width: 20),
                          Text(
                            i == 0
                                ? 'Dresses'
                                : i == 1
                                ? 'Hand Bags'
                                : i == 2
                                ? 'Shoes'
                                : 'Out Door',
                            style: TextStyle(fontWeight: .bold, fontSize: 20),
                          ),
                          Image(
                            image: AssetImage(
                              i == 0
                                  ? 'assets/p10 copy.png'
                                  : i == 1
                                  ? 'assets/pr1.png'
                                  : i == 2
                                  ? 'assets/s1.png'
                                  : 'assets/coat.png',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
