import 'package:e_shop/res/appColor.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    final Screensize = MediaQuery.of(context).size.height * 1;
    final Screenwidth = MediaQuery.of(context).size.width * 1;
    int isSelected = 0;

    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Icon(Icons.notifications_active),
          ),
        ],
        title: Text("Gemstore", style: TextStyle(fontWeight: .bold)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Container(
              height: Screensize / 9,
              width: Screenwidth,
              decoration: BoxDecoration(),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(
                      left: 10,
                      top: 10,
                      bottom: 10,
                    ),
                    child: GestureDetector(
                      onTap: () {
                        print(index);
                        isSelected = index;
                      },
                      child: Container(
                        height: 60,
                        width: 90,
                        decoration: BoxDecoration(
                          border: .all(color: Appcolors.Black),
                          shape: .circle,
                          color: Appcolors.whiteType,
                        ),
                        child: Container(
                          height: 90,
                          width: 90,
                          decoration: BoxDecoration(
                            shape: .circle,

                            color: isSelected == 0
                                ? Appcolors.Black
                                : isSelected == 1
                                ? Appcolors.Black
                                : isSelected == 2
                                ? Appcolors.Black
                                : Appcolors.White,
                            image: DecorationImage(
                              image: AssetImage(
                                index == 0
                                    ? 'assets/female.png'
                                    : index == 1
                                    ? 'assets/male.png'
                                    : index == 2
                                    ? 'assets/glasses.png'
                                    : 'assets/beauty.png',
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),

            AnimatedContainer(
              duration: Duration(milliseconds: 300),
              height: Screensize / 4,
              width: Screenwidth,
              decoration: BoxDecoration(
                borderRadius: .circular(15),
                image: DecorationImage(
                  fit: .cover,

                  image: AssetImage('assets/main.png'),
                ),

                color: Colors.red,
              ),
              child: Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Column(
                  crossAxisAlignment: .end,
                  children: [
                    Text(
                      "Autumn\nCollection\n2022",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: .bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                Text(
                  'Feature Product',
                  style: TextStyle(
                    fontSize: 25,
                    color: Appcolors.Black,
                    fontWeight: .bold,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    print('Button Pressed');
                  },
                  child: Text(
                    'Show All',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey,
                      fontWeight: .w500,
                    ),
                  ),
                ),
              ],
            ),

            Container(
              child: Column(
                children: [
                  Container(
                    height: Screensize / 5,
                    width: Screenwidth,
                    //decoration: BoxDecoration(color: Colors.red),
                    child: ListView.builder(
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Column(
                            children: [
                              AnimatedContainer(
                                decoration: BoxDecoration(
                                  color: Colors.amber,

                                  borderRadius: .circular(20),
                                ),
                                duration: Duration(milliseconds: 200),
                                height: Screensize / 5,
                                width: Screenwidth / 3.5,
                              ),
                              Text(
                                'Name',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: .w500,
                                ),
                              ),
                              Text(
                                'Price:',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: .w500,
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
