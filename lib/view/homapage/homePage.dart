import 'package:e_shop/res/appColor.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  bool isExpended = false;

  @override
  Widget build(BuildContext context) {
    bool light = false;
    List<Map<String, dynamic>> womenDressList = [
      {"name": "Long Sleeve Dress", "price": 4500},
      {"name": "Sleeveless Dress", "price": 3800},
      {"name": "Short Sleeve Dress", "price": 4000},
      {"name": "Off-Shoulder Dress", "price": 5200},
      {"name": "Wrap Dress", "price": 4700},
      {"name": "Maxi Dress", "price": 6000},
      {"name": "Midi Dress", "price": 5500},
      {"name": "Bodycon Dress", "price": 4800},
      {"name": "A-Line Dress", "price": 4300},
    ];

    List<String> imagePaths = List.generate(
      10, // number of images
      (index) => 'assets/p${index + 2}.png',
    );

    final Screensize = MediaQuery.of(context).size.height * 1;
    final Screenwidth = MediaQuery.of(context).size.width * 1;
    int isSelected = 0;
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: AnimatedContainer(
                duration: Duration(milliseconds: 100),
                decoration: BoxDecoration(borderRadius: .circular(20)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 0),
                  child: Row(
                    mainAxisAlignment: .start,
                    children: [
                      CircleAvatar(
                        maxRadius: 50,
                        minRadius: 50,
                        child: Icon(Icons.person, size: 100),
                      ),
                      SizedBox(width: 10),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: .start,
                        children: [
                          Text(
                            "Name",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: .bold,
                            ),
                          ),
                          Text(
                            "Email",
                            style: TextStyle(fontSize: 12, color: Colors.black),
                          ),
                        ],
                      ),
                      SizedBox(),
                    ],
                  ),
                ),
              ),
            ),
            ListTile(
              title: Text('HomePage'),
              leading: Icon(Icons.home_outlined),
            ),

            ListTile(title: Text('Discover'), leading: Icon(Icons.search)),
            ListTile(
              title: Text('My Order'),
              leading: Icon(Icons.shopping_bag_outlined),
            ),
            ListTile(
              title: Text('Profile'),
              leading: Icon(Icons.person_outline),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Text("OTHERS"),
            ),
            ListTile(
              title: Text('Setting'),
              leading: Icon(Icons.settings_outlined),
            ),
            ListTile(title: Text('Support'), leading: Icon(Icons.mail_outline)),
            ListTile(
              title: Text('About Us'),
              leading: Icon(Icons.info_outline),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: Container(
                height: 60,
                width: 10,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: .circular(40),
                ),
                child: Row(
                  mainAxisAlignment: .center,
                  children: [
                    Center(
                      child: Container(
                        height: 50,
                        width: 100,
                        decoration: BoxDecoration(
                          boxShadow: [BoxShadow(color: Colors.black)],
                          color: Appcolors.whiteType,
                          borderRadius: .circular(40),
                        ),
                        child: Row(
                          mainAxisAlignment: .center,
                          children: [
                            Icon(Icons.brightness_6_rounded),
                            Text("Light", style: TextStyle(fontSize: 20)),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 5),
                    Center(
                      child: Container(
                        height: 50,
                        width: 100,
                        decoration: BoxDecoration(
                          color: Appcolors.whiteType,

                          borderRadius: .circular(40),
                        ),
                        child: Row(
                          mainAxisAlignment: .center,
                          children: [
                            Icon(Icons.brightness_2_rounded),
                            Text("Dark", style: TextStyle(fontSize: 20)),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        //leading: Icon(Icons.menu),
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
        child: SingleChildScrollView(
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
                          height: 90,
                          width: 90,
                          decoration: BoxDecoration(
                            border: .all(color: Appcolors.Black, width: 2),
                            shape: .circle,
                            color: Appcolors.whiteType,
                          ),
                          child: Column(
                            mainAxisAlignment: .center,
                            children: [
                              Container(
                                height: 70,
                                width: 70,
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
                            ],
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
                      setState(() {
                        isExpended = !isExpended;
                        print(isExpended);
                      });
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
                      height: Screensize / 3.6,
                      width: Screenwidth,
                      //decoration: BoxDecoration(color: Colors.red),
                      child: ListView.builder(
                        itemCount: womenDressList.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          final dress = womenDressList[index];
                          return Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: .start,
                              children: [
                                AnimatedContainer(
                                  decoration: BoxDecoration(
                                    //color: Colors.amber,
                                    borderRadius: .circular(30),
                                  ),
                                  duration: Duration(milliseconds: 200),
                                  height: Screensize / 5,
                                  width: Screenwidth / 3.5,
                                  child: Image(
                                    //colorBlendMode: .darken,
                                    fit: .cover,
                                    filterQuality: .high,
                                    image: AssetImage(imagePaths[index]),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Text(
                                    dress["name"],
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: .w500,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Text(
                                    "\$ ${dress["price"]}",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: .bold,
                                    ),
                                  ),
                                ),
                              ],
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
                        color: Appcolors.whiteType,

                        //color: Colors.red,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Row(
                          mainAxisAlignment: .center,
                          children: [
                            Column(
                              mainAxisAlignment: .spaceEvenly,
                              crossAxisAlignment: .center,
                              children: [
                                Text(
                                  "| New Collection ",
                                  style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.black,
                                    fontWeight: .w300,
                                  ),
                                ),
                                Text(
                                  "HANG OUT\n & PARTY",
                                  style: TextStyle(
                                    fontSize: 30,
                                    color: Colors.grey,
                                    fontWeight: .w500,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: 25),
                            Stack(
                              children: [
                                Container(
                                  height: 170,
                                  width: 170,
                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                      255,
                                      202,
                                      200,
                                      200,
                                    ),
                                    shape: .circle,
                                  ),
                                ),

                                Image(
                                  fit: .cover,
                                  width: 170,
                                  image: AssetImage('assets/hangout.png'),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    isExpended
                        ? Container(
                            height: Screensize,
                            width: Screenwidth,
                            decoration: BoxDecoration(),
                            child: Column(
                              mainAxisAlignment: .start,
                              children: [
                                Row(
                                  mainAxisAlignment: .spaceBetween,
                                  children: [
                                    Text(
                                      "Top Collection",
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: .bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Text(
                                      'Show All',
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.grey,
                                        fontWeight: .w500,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 20),

                                AnimatedContainer(
                                  duration: Duration(milliseconds: 300),
                                  height: Screensize / 4,
                                  width: Screenwidth,
                                  decoration: BoxDecoration(
                                    borderRadius: .circular(15),
                                    color: Appcolors.whiteType,

                                    //color: Colors.red,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 10),
                                    child: Row(
                                      mainAxisAlignment: .center,
                                      children: [
                                        Column(
                                          mainAxisAlignment: .spaceEvenly,
                                          crossAxisAlignment: .center,
                                          children: [
                                            Text(
                                              "Sale Upto 40%",
                                              style: TextStyle(
                                                fontSize: 25,
                                                color: Colors.black,
                                                fontWeight: .w300,
                                              ),
                                            ),
                                            Text(
                                              "For Slim\n& Beauty",
                                              style: TextStyle(
                                                fontSize: 30,
                                                color: Colors.grey,
                                                fontWeight: .w500,
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(width: 25),
                                        Stack(
                                          children: [
                                            Container(
                                              height: 170,
                                              width: 170,
                                              decoration: BoxDecoration(
                                                color: const Color.fromARGB(
                                                  255,
                                                  202,
                                                  200,
                                                  200,
                                                ),
                                                shape: .circle,
                                              ),
                                            ),

                                            Image(
                                              fit: .cover,
                                              width: 170,
                                              image: AssetImage(
                                                'assets/p13.png',
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(height: 20),
                                AnimatedContainer(
                                  duration: Duration(milliseconds: 300),
                                  height: Screensize / 4,
                                  width: Screenwidth,
                                  decoration: BoxDecoration(
                                    borderRadius: .circular(15),
                                    color: Appcolors.whiteType,

                                    //color: Colors.red,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 10),
                                    child: Row(
                                      mainAxisAlignment: .center,
                                      children: [
                                        Column(
                                          mainAxisAlignment: .spaceEvenly,
                                          crossAxisAlignment: .start,
                                          children: [
                                            Text(
                                              "| Summer\nCollection\n2026",
                                              style: TextStyle(
                                                fontSize: 25,
                                                color: Colors.black,
                                                fontWeight: .w300,
                                              ),
                                            ),
                                            Text(
                                              "Most sexy\n& fabulous\ndesign ",
                                              style: TextStyle(
                                                fontSize: 25,
                                                color: Colors.grey,
                                                fontWeight: .w500,
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(width: 25),
                                        Stack(
                                          children: [
                                            Container(
                                              height: 170,
                                              width: 170,
                                              decoration: BoxDecoration(
                                                color: const Color.fromARGB(
                                                  255,
                                                  202,
                                                  200,
                                                  200,
                                                ),
                                                shape: .circle,
                                              ),
                                            ),

                                            Image(
                                              fit: .cover,
                                              width: 170,
                                              image: AssetImage(
                                                'assets/p14.png',
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(height: 20),

                                Container(
                                  height: Screensize / 4,
                                  width: Screenwidth,
                                  decoration: BoxDecoration(),
                                  child: ListView.builder(
                                    itemCount: 2,
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder: (context, index) {
                                      return Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          height: Screensize / 4.1,
                                          width: Screenwidth / 2,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                              20,
                                            ),
                                            color: Appcolors.whiteType,
                                          ),
                                          child: Row(
                                            children: [
                                              Image(
                                                fit: .cover,
                                                width: 100,
                                                image: AssetImage(
                                                  index == 0
                                                      ? 'assets/p11.png'
                                                      : 'assets/p12.png',
                                                ),
                                              ),
                                              Column(
                                                mainAxisAlignment: .spaceEvenly,
                                                crossAxisAlignment: .start,
                                                children: [
                                                  Text(
                                                    index == 0
                                                        ? 'T -Shirt'
                                                        : 'Dresses',

                                                    style: TextStyle(
                                                      fontSize: 18,
                                                      color: Colors.black,
                                                      fontWeight: .bold,
                                                    ),
                                                  ),
                                                  Text(
                                                    index == 0
                                                        ? "The\nOffice\nLife"
                                                        : 'Elegance\nDesign',

                                                    style: TextStyle(
                                                      fontSize: 20,
                                                      color: Colors.grey,
                                                      fontWeight: .w500,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          )
                        : SizedBox(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
