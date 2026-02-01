import 'package:e_shop/data/applist.dart';
import 'package:e_shop/res/appColor.dart';
import 'package:e_shop/res/components/custom_Editing_controller.dart';
import 'package:flutter/material.dart';

class dicoverScreen extends StatefulWidget {
  const dicoverScreen({super.key});

  @override
  State<dicoverScreen> createState() => _dicoverScreenState();
}

class _dicoverScreenState extends State<dicoverScreen> {
  int Selectedtile = -1;
  List<String> detail = [
    'Jacket',
    'Skirts',
    'Dresses',
    'Sweaters',
    'Jeans',
    'T-Shirts',
    'Pants',
  ];
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
      body: SingleChildScrollView(
        child: Column(
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
                      selectedindex = -1;
                    });
                  },
                  onTap: () {
                    setState(() {
                      selectedindex = i;
                    });
                  },
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                    height: selectedindex == i
                        ? screenHeight / 2
                        : screenHeight / 7,
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
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          /// 🔹 Main Row (Always Visible)
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                i == 0
                                    ? 'Dresses'
                                    : i == 1
                                    ? 'Hand Bags'
                                    : i == 2
                                    ? 'Shoes'
                                    : 'Out Door',
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              Image.asset(
                                i == 0
                                    ? 'assets/p10 copy.png'
                                    : i == 1
                                    ? 'assets/pr1.png'
                                    : i == 2
                                    ? 'assets/s1.png'
                                    : 'assets/coat.png',
                                height: 50,
                              ),
                            ],
                          ),

                          /// 🔹 Extra content (Only when selected)
                          if (selectedindex == i) ...[
                            const Divider(),

                            ListView.builder(
                              itemCount: 6,
                              shrinkWrap: true, // ⭐ REQUIRED
                              physics:
                                  const NeverScrollableScrollPhysics(), // ⭐ REQUIRED
                              itemBuilder: (context, index) {
                                return ListTile(
                                  onTap: () {
                                    setState(() {
                                      Selectedtile = index;
                                    });
                                  },
                                  selected: Selectedtile == index
                                      ? true
                                      : false,
                                  title: Text(
                                    i == 0
                                        ? Applist.dressSubCategories[index]
                                        : i == 1
                                        ? Applist.handBagSubCategories[index]
                                        : i == 2
                                        ? Applist.shoesSubCategories[index]
                                        : Applist
                                              .jacketCoatSubCategories[index],
                                    style: TextStyle(
                                      color: Selectedtile == index
                                          ? Colors.white
                                          : Colors.black,
                                    ),
                                  ),
                                  trailing: Icon(
                                    Icons.arrow_forward_ios_outlined,
                                  ),
                                );
                              },
                            ),
                          ],
                        ],
                      ),
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
