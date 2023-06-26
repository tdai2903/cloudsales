import 'package:carousel_pro_nullsafety/carousel_pro_nullsafety.dart';
import 'package:cloudgo_sales1/screens/cloud_cam_screen/cloud_cam_screen.dart';
import 'package:cloudgo_sales1/screens/cloud_pos_screen/cloud_pos_screen.dart';
import 'package:cloudgo_sales1/screens/cloud_sales_screen/cloud_sales_screen.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import '../cloud_care_screen/cloud_care_screen.dart';
import '../cloud_chat_screen/cloud_chat_screen.dart';
import '../cloud_tele_screen/cloud_tele_screen.dart';
import '../cloud_work_screen/cloud_work_screen.dart';

class HomePageScreen extends StatefulWidget {
  HomePageScreen({super.key});
  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  var jsonList;
  int value = 8;
//creating static data in lists
  List nameScreen = [
    CloudSalesScreen(jsonList: List<dynamic>),
    const CloudWorkScreen(),
    const CloudCamScreen(),
    const CloudCareScreen(),
    const CloudTeleScreen(),
    const CloudChatScreen(),
    const CloudPosScreen(),
  ];

  List catNames = [
    'CloudSALES',
    'CloudWORK',
    'CloudCAM',
    'CloudCARE',
    'CloudTELE',
    'CloudCHAT',
    'CloudPOS',
    'More',
    'CloudTELE',
    'CloudCHAT',
    'CloudPOS',
    'More',
  ];

  List<Color> catColors = [
    const Color.fromARGB(255, 129, 203, 227),
    const Color.fromARGB(255, 129, 203, 227),
    const Color.fromARGB(255, 129, 203, 227),
    const Color.fromARGB(255, 129, 203, 227),
    const Color.fromARGB(255, 129, 203, 227),
    const Color.fromARGB(255, 129, 203, 227),
    const Color.fromARGB(255, 129, 203, 227),
    const Color.fromARGB(255, 129, 203, 227),
    const Color.fromARGB(255, 129, 203, 227),
    const Color.fromARGB(255, 129, 203, 227),
    const Color.fromARGB(255, 129, 203, 227),
    const Color.fromARGB(255, 129, 203, 227),
  ];

  List<Image> catIcons = [
    Image.asset(
      "lib/assets/icons/sales.png",
      height: 45,
    ),
    Image.asset(
      "lib/assets/icons/work.png",
      height: 40,
    ),
    Image.asset(
      "lib/assets/icons/camera.png",
    ),
    Image.asset(
      "lib/assets/icons/care.png",
      height: 40,
    ),
    Image.asset(
      "lib/assets/icons/tele.png",
    ),
    Image.asset(
      "lib/assets/icons/chat.png",
      height: 40,
    ),
    Image.asset(
      "lib/assets/icons/pos.png",
      height: 40,
    ),
    Image.asset(
      "lib/assets/icons/xemthem.png",
      height: 40,
    ),
    Image.asset(
      "lib/assets/icons/tele.png",
    ),
    Image.asset(
      "lib/assets/icons/chat.png",
      height: 40,
    ),
    Image.asset(
      "lib/assets/icons/pos.png",
      height: 40,
    ),
    Image.asset(
      "lib/assets/icons/xemthem.png",
      height: 40,
    ),
  ];

  void getData() async {
    try {
      var response = await Dio()
          .get('https://protocoderspoint.com/jsondata/superheros.json');
      if (response.statusCode == 200) {
        setState(() {
          jsonList = response.data["superheros"] as List;
        });
        print(jsonList);
      } else {
        print(response.statusCode);
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    // var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          Container(
            height: 250,
            child: Stack(
              children: [
                Container(
                  height: 150,
                  decoration: const BoxDecoration(
                    color: Color(0xFF4169E1),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(
                          left: 10,
                          bottom: 50,
                        ),
                        width: 310,
                        height: 40,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: "Search here...",
                            hintStyle: TextStyle(
                              color: Colors.black,
                            ),
                            prefixIcon: Icon(
                              Icons.search,
                              color: Colors.black,
                              size: 25,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 45,
                        margin: const EdgeInsets.only(
                          right: 10,
                          bottom: 50,
                        ),
                        child: Image.asset("lib/assets/icons/avatar.png"),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  left: 0,
                  right: 0,
                  top: 100,
                  child: Container(
                    margin: const EdgeInsets.only(
                      left: 10,
                      right: 10,
                    ),
                    height: 150,
                    width: 300,
                    decoration: const BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Carousel(
                        dotSize: 3,
                        dotSpacing: 10,
                        // borderRadius: true,
                        radius: const Radius.circular(20),
                        dotColor: Colors.blueAccent,
                        dotPosition: DotPosition.bottomCenter,
                        indicatorBgPadding: 1,
                        images: [
                          Image.asset(
                            'lib/assets/images/new6.png',
                            fit: BoxFit.fill,
                          ),
                          Image.asset(
                            'lib/assets/images/new5.png',
                            fit: BoxFit.fill,
                            // scale: 0.5,
                            height: 50,
                            width: 90,
                          ),
                          Image.asset(
                            'lib/assets/images/new7.png',
                            fit: BoxFit.fill,
                          ),
                          Image.asset(
                            'lib/assets/images/new8.png',
                            fit: BoxFit.fill,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
            child: Column(
              children: [
                GridView.builder(
                  itemCount: value,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4, childAspectRatio: 0.85),
                  itemBuilder: (context, index) {
                    return Column(children: [
                      InkWell(
                        onTap: () {
                          if (index == 7) {
                            setState(() {
                              //print(value);
                              itemCount:
                              catNames.length;
                              {
                                print(jsonList.runtimeType);
                              }
                            });
                          } else {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => nameScreen[index]),
                            );
                          }
                        },
                        child: Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: catColors[index],
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: catIcons[index],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        catNames[index],
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ]);
                  },
                )
              ],
            ),
          ),
          Container(
            color: const Color.fromARGB(255, 232, 230, 230),
            child: const SizedBox(
              height: 12,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.only(top: 10),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'NEWS',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'See more >',
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 250,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      newsCard('lib/assets/images/new1.png'),
                      newsCard('lib/assets/images/new4.png'),
                      newsCard('lib/assets/images/new3.png'),
                      newsCard('lib/assets/images/new2.png'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget newsCard(image) {
    return AspectRatio(
      aspectRatio: 1,
      child: Container(
        margin: const EdgeInsets.only(right: 15, top: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(fit: BoxFit.cover, image: AssetImage(image)),
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
                begin: Alignment.bottomRight,
                stops: const [
                  0.1,
                  0.9
                ],
                colors: [
                  Colors.blueAccent.withOpacity(.5),
                  Colors.blueAccent.withOpacity(.1)
                ]),
          ),
        ),
      ),
    );
  }
}
