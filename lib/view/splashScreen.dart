import 'package:e_shop/res/appColor.dart';
import 'package:flutter/material.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height * 1;
    final screenWidth = MediaQuery.of(context).size.width * 1;
    return Scaffold(
      body: PageView(
        children: [
          Container(
            height: screenWidth,
            width: screenWidth,
            decoration: BoxDecoration(),
            child: Stack(
              children: [
                Align(
                  alignment: .bottomCenter,
                  child: Container(
                    height: screenHeight / 2,
                    decoration: BoxDecoration(color: Appcolors.Grey),
                  ),
                ),

                Container(
                  height: screenWidth,
                  width: screenWidth,
                  child: Column(
                    children: [
                      SizedBox(height: screenHeight / 10),
                      Text(
                        'Discover something new',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: .bold,
                        ),
                      ),
                      Text(
                        'Special new arrivals just for you',
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ],
                  ),
                ),

                Center(
                  child: Container(
                    height: screenHeight / 2,
                    width: screenWidth / 1.3,
                    decoration: BoxDecoration(
                      borderRadius: .circular(13),
                      color: Appcolors.light,
                      image: DecorationImage(
                        fit: .contain,
                        image: AssetImage('assets/1.png'),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: .centerLeft,
                  child: Container(
                    height: screenHeight / 4,
                    width: screenWidth / 12,
                    decoration: BoxDecoration(
                      color: Appcolors.light,
                      borderRadius: .only(
                        topRight: .circular(10),
                        bottomRight: .circular(10),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: .centerRight,
                  child: Container(
                    height: screenHeight / 4,
                    width: screenWidth / 12,
                    decoration: BoxDecoration(
                      color: Appcolors.light,
                      borderRadius: .only(
                        topLeft: .circular(10),
                        bottomLeft: .circular(10),
                      ),
                    ),
                  ),
                ),

                Positioned(
                  top: screenHeight/1.3,
                  left: screenWidth/2.6,
                  child: Container(
                    height: 12,
                    width: 12,
                    decoration: BoxDecoration(
                      shape: .circle,
                      color: Appcolors.light,
                     border: Border.all(color: Appcolors.light)
                    ),
                  ),
                ),
                Container(
                  height: screenHeight / 12,
                  width: screenWidth / 3,
                  decoration: BoxDecoration(color: Appcolors.light),
                ),
              ],
            ),
          ),
          Container(
            height: screenWidth,
            width: screenWidth,
            decoration: BoxDecoration(),
            child: Stack(
              children: [
                Align(
                  alignment: .bottomCenter,
                  child: Container(
                    height: screenHeight / 2,
                    decoration: BoxDecoration(color: Appcolors.Grey),
                  ),
                ),

                Container(
                  height: screenWidth,
                  width: screenWidth,
                  child: Column(
                    children: [
                      SizedBox(height: screenHeight / 10),
                      Text(
                        'Discover something new',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: .bold,
                        ),
                      ),
                      Text(
                        'Special new arrivals just for you',
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ],
                  ),
                ),

                Center(
                  child: Container(
                    height: screenHeight / 2,
                    width: screenWidth / 1.3,
                    decoration: BoxDecoration(
                      borderRadius: .circular(13),
                      color: Appcolors.light,
                      image: DecorationImage(
                        fit: .contain,
                        image: AssetImage('assets/2.png'),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: .centerLeft,
                  child: Container(
                    height: screenHeight / 4,
                    width: screenWidth / 12,
                    decoration: BoxDecoration(
                      color: Appcolors.light,
                      borderRadius: .only(
                        topRight: .circular(10),
                        bottomRight: .circular(10),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: .centerRight,
                  child: Container(
                    height: screenHeight / 4,
                    width: screenWidth / 12,
                    decoration: BoxDecoration(
                      color: Appcolors.light,
                      borderRadius: .only(
                        topLeft: .circular(10),
                        bottomLeft: .circular(10),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: screenWidth,
            width: screenWidth,
            decoration: BoxDecoration(),
            child: Stack(
              children: [
                Align(
                  alignment: .bottomCenter,
                  child: Container(
                    height: screenHeight / 2,
                    decoration: BoxDecoration(color: Appcolors.Grey),
                  ),
                ),

                Container(
                  height: screenWidth,
                  width: screenWidth,
                  child: Column(
                    children: [
                      SizedBox(height: screenHeight / 10),
                      Text(
                        'Discover something new',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: .bold,
                        ),
                      ),
                      Text(
                        'Special new arrivals just for you',
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ],
                  ),
                ),

                Center(
                  child: Container(
                    height: screenHeight / 2,
                    width: screenWidth / 1.3,
                    decoration: BoxDecoration(
                      borderRadius: .circular(13),
                      color: Appcolors.light,
                      image: DecorationImage(
                        fit: .contain,
                        image: AssetImage('assets/3.png'),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: .centerLeft,
                  child: Container(
                    height: screenHeight / 4,
                    width: screenWidth / 12,
                    decoration: BoxDecoration(
                      color: Appcolors.light,
                      borderRadius: .only(
                        topRight: .circular(10),
                        bottomRight: .circular(10),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: .centerRight,
                  child: Container(
                    height: screenHeight / 4,
                    width: screenWidth / 12,
                    decoration: BoxDecoration(
                      color: Appcolors.light,
                      borderRadius: .only(
                        topLeft: .circular(10),
                        bottomLeft: .circular(10),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
