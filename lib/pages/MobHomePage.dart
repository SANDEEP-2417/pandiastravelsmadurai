// ignore_for_file: file_names, unnecessary_import, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:three/utils/functions.dart';
import 'package:three/utils/image.dart';
import 'package:three/utils/listIteam.dart';
import 'package:three/utils/size.dart';
import 'package:three/utils/text.dart';
import 'package:three/widgets/NavBar.dart';
import 'package:three/widgets/cards.dart';
import 'package:three/widgets/tourPackage.dart';

Widget MobileHomePage(BuildContext context) {
  return Scaffold(
      body: SingleChildScrollView(
    physics: BouncingScrollPhysics(),
    scrollDirection: Axis.vertical,
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Center(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(children: [
                      NavButton('Home', context),
                      NavButton('About', context),
                      NavButton('Destinations', context),
                    ]),
                  ),
                  MobileHome(context)
                ],
              ),
            ),
          ],
        ),
      ],
    ),
  ));
}

Widget MobileHome(BuildContext context) {
  final double w = MediaQuery.of(context).size.width;
  final double h = MediaQuery.of(context).size.height;
  return Container(
      child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
    Container(
      height: h * 0.40,
      width: w,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/dark-theme-16.jpg'),
              fit: BoxFit.cover)),
      child: Row(
        children: [
          SizedBox(
            width: w * 0.80,
            height: h * 0.70,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 20, top: 20),
                  child: Text(
                    HomeText.Comy_name,
                    style: TextStyle(
                        fontSize: Tsize.fontsizeLg,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: Tsize.spaceBtwSections,
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20),
                  child: Text(HomeText.Compy_t,
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                          fontSize: Tsize.fontsizeSm,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                ),
                SizedBox(
                  height: Tsize.spaceBtwItems,
                ),

                // --------- Buttons ---------- //

                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 20, top: 20),
                      height: 35,
                      width: w * 0.35,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            overlayColor: Color.fromARGB(255, 4, 135, 6),
                            backgroundColor: Color.fromARGB(255, 181, 8, 166),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  10), // Reduce border radius for mobile
                            ),
                            shadowColor: Color.fromARGB(255, 2, 206, 60),
                            elevation: 3, // Reduce elevation for mobile
                          ),
                          onPressed: () {
                            TFunctions.launchWhatsApp(
                                phone: '9842185596',
                                message: "I am willing to book package!");
                          },
                          child: Row(
                            children: [
                              Image(
                                  height: 20,
                                  width: 20,
                                  image: AssetImage(HomeImage.Whats_logo)),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                HomeText.WhatsAPP,
                                style: TextStyle(
                                    fontSize: 14, color: Colors.white),
                              )
                            ],
                          )),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 20, top: 20),
                      height: 35,
                      width: w * 0.25,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            overlayColor: Color.fromARGB(255, 4, 135, 6),
                            backgroundColor: Color.fromARGB(255, 181, 8, 166),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  10), // Reduce border radius for mobile
                            ),
                            shadowColor: Color.fromARGB(255, 2, 206, 60),
                            elevation: 3, // Reduce elevation for mobile
                          ),
                          onPressed: () {
                            TFunctions.launchCaller('9842185596');
                          },
                          child: Row(
                            children: [
                              Text(
                                HomeText.Call,
                                style: TextStyle(
                                    fontSize: 14, color: Colors.white),
                              )
                            ],
                          )),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    ),

    SizedBox(
      height: 10,
    ),

    // ----------- Container 2 ----------- //

    Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: h * 0.50,
            width: w,
            child: Package_Cards(),
          ),
          SizedBox(
            height: Tsize.spaceBtwSections,
          ),
          SizedBox(
            height: h * 0.05,
            width: w,
            child: Text(
              textAlign: TextAlign.center,
              'Popular Packages',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: w * 0.06,
                  color: Colors.black),
            ),
          ),
          SizedBox(height: 10),
          SizedBox(
            height: h * 0.50,
            width: w,
            child: ListView(
              scrollDirection: Axis.horizontal,
              physics: RangeMaintainingScrollPhysics(),
              children: [
                TourPack_MD(
                    TDesText: HomeText.MD_Pack_des,
                    HSize: 475,
                    WSize: 334,
                    Timage: HomeImage.MD_tour_img,
                    THeadText: HomeText.mdu_name,
                    Font: 18,
                    Titeam: TiteamList.MD_Pack_place),
                SizedBox(
                  height: 25,
                ),
                TourPack_MD(
                    TDesText: HomeText.KK_Pack_des,
                    HSize: 434,
                    WSize: 334,
                    Timage: HomeImage.KK_tour_img,
                    THeadText: HomeText.KK_name,
                    Font: 18,
                    Titeam: TiteamList.KK_Pack_place),
                SizedBox(
                  height: 25,
                ),
                TourPack_MD(
                    TDesText: HomeText.Ram_Pack_des,
                    HSize: 434,
                    WSize: 334,
                    Timage: HomeImage.ram_tour_img,
                    THeadText: HomeText.Ram_name,
                    Font: 18,
                    Titeam: TiteamList.Ram_Pack_place),
                SizedBox(
                  height: 25,
                ),
              ],
            ),
          ),
          SizedBox(
            height: h * 0.08,
          ),
          Container(
            height: h * 0.65, // Reduce height for mobile
            width: w,
            decoration: BoxDecoration(
              color: Colors.grey.shade600,
              image: DecorationImage(
                image: AssetImage('assets/homebgimage.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              // Change Row to Column for vertical stacking
              children: [
                // -- About us Container -- //
                SizedBox(
                  height: 205, // Adjust height for mobile
                  width: w,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0), // Adjust padding
                        child: Text(
                          HomeText.about,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18, // Adjust font size
                            decoration: TextDecoration.none,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16), // Adjust padding
                        child: Text(
                          HomeText.About_con_txt,
                          style: TextStyle(
                            fontSize: 14, // Adjust font size
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // --- Popular Tours Container --- //
                SizedBox(
                  height: 185, // Adjust height for mobile
                  width: w,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 8.0), // Adjust padding
                        child: Text(
                          HomeText.Pop_tour,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            decoration: TextDecoration.none,
                            fontSize: 18, // Adjust font size
                          ),
                        ),
                      ),
                      Text(
                        HomeText.Mad_tour,
                        style: TextStyle(
                          fontSize: 14, // Adjust font size
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      Text(
                        HomeText.KK_tour,
                        style: TextStyle(
                          fontSize: 14, // Adjust font size
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      Text(
                        HomeText.Ram_tour,
                        style: TextStyle(
                          fontSize: 14, // Adjust font size
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      Text(
                        HomeText.Tiru_tour,
                        style: TextStyle(
                          fontSize: 14, // Adjust font size
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ],
                  ),
                ),
                // --- Contact Us Container --- //
                SizedBox(
                  height: 100, // Adjust height for mobile
                  width: w,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0), // Adjust padding
                        child: Text(
                          'Call Us:-',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            decoration: TextDecoration.none,
                            fontSize: 18, // Adjust font size
                          ),
                        ),
                      ),
                      Text(
                        '+91 9842185596',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          decoration: TextDecoration.none,
                          fontSize: 14, // Adjust font size
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    )
  ]));
}
