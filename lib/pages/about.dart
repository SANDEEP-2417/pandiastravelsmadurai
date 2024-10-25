import 'dart:ui';

import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:responsive_builder/responsive_builder.dart';
import 'package:three/pages/destination.dart';
import 'package:three/utils/functions.dart';
import 'package:three/utils/image.dart';
import 'package:three/utils/size.dart';
import 'package:three/utils/text.dart';
import 'package:three/widgets/NavBar.dart';
import 'package:three/widgets/banner.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    // ignore: avoid_types_as_parameter_names
    return ResponsiveBuilder(builder: (context, SizingInformation) {
      if (SizingInformation.deviceScreenType == DeviceScreenType.desktop) {
        return desktopAbout(context);
      } else {
        return mobileAbout(context);
      }
    });
  }
}

Widget desktopAbout(BuildContext context) {
  final double w = MediaQuery.of(context).size.width;
  final double h = MediaQuery.of(context).size.height;
  return Scaffold(
    body: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      physics: BouncingScrollPhysics(),
      child: Container(
        decoration: BoxDecoration(color: Colors.white),
        child: Column(children: [
          Container(
              height: h / 1.5,
              width: w,
              decoration: BoxDecoration(),
              child: Column(children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 20),
                            child: Row(children: [
                              NavButton('Home', context),
                              NavButton('About', context),
                              NavButton('Destinations', context),
                            ]),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                // -- About Banner -- //

                Container(
                  height: h / 2,
                  width: w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2),
                      color: Colors.grey.shade50,
                      image: DecorationImage(
                          opacity: 20,
                          image: AssetImage(HomeImage.MD_about_banner),
                          fit: BoxFit.cover)),
                ),
              ])),

          // --- Contanier 2 --- //

          Container(
            margin: const EdgeInsets.only(right: 20, left: 20),
            height: h / 2,
            width: w,
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 3, 6, 64),
                    spreadRadius: 3,
                    blurRadius: 25,
                  )
                ],
                gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.bottomRight,
                    colors: <Color>[
                      Color.fromARGB(255, 1, 9, 94),
                      Color(0xFFAB2376)
                    ]),
                borderRadius: BorderRadius.circular(25)),
            child: Stack(
              children: [
                Positioned(
                    right: 45,
                    top: 35,
                    child: Container(
                        width: 248,
                        height: 248,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromARGB(255, 3, 6, 64),
                                spreadRadius: 3,
                                blurRadius: 25,
                              )
                            ],
                            image: DecorationImage(
                                image: AssetImage(HomeImage.Road_img),
                                fit: BoxFit.cover),
                            border: Border.all(
                                color: Color.fromARGB(255, 2, 206, 60)),
                            color: Color(0xFF29ACA0),
                            borderRadius:
                                BorderRadius.all(Radius.circular(170))))),

                Positioned(
                    right: 2,
                    top: 25,
                    child: Image(
                      image: AssetImage(HomeImage.TN_67_image),
                      height: h / 2,
                      width: w / 3,
                    )),

                Positioned(
                    top: 30,
                    left: 30,
                    child: Text(
                      HomeText.Comy_name,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 35,
                          color: Colors.white,
                          decoration: TextDecoration.none),
                    )),

                Positioned(
                    top: 87,
                    left: 30,
                    child: SizedBox(
                        width: w / 2.5,
                        child: Text(
                          HomeText.des_about_1,
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 18,
                              color: Colors.white,
                              decoration: TextDecoration.none),
                        ))),

                //--- WhatsAPP Button --- //

                Positioned(
                    top: 234,
                    left: 30,
                    child: Row(
                      children: [
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                overlayColor: Color.fromARGB(255, 4, 135, 6),
                                backgroundColor:
                                    Color.fromARGB(255, 181, 8, 166),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15)),
                                shadowColor: Color.fromARGB(255, 2, 206, 60),
                                elevation: 5),
                            onPressed: () {
                              TFunctions.launchWhatsApp(
                                  phone: '9842185596',
                                  message:
                                      'Hello, I like to book a package On your Travels');
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image(
                                  image: AssetImage(HomeImage.Whats_logo),
                                  height: 22,
                                  width: 22,
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  HomeText.WhatsAPP,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16),
                                ),
                              ],
                            )),
                        SizedBox(
                          width: 20,
                        ),
                        //--- Call Button --- //

                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    Color.fromARGB(255, 181, 8, 166),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                shadowColor: Color.fromARGB(255, 2, 206, 60),
                                elevation: 5),
                            onPressed: () {
                              TFunctions.launchCaller('9842185596');
                            },
                            child: Row(
                              children: [
                                Icon(
                                  Icons.call,
                                  size: 18,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(HomeText.Call,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16)),
                              ],
                            )),

                        // ---- view package button --- //
                        SizedBox(
                          width: 20,
                        ),

                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    Color.fromARGB(255, 181, 8, 166),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                shadowColor: Color.fromARGB(255, 2, 206, 60),
                                elevation: 5),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DestinationPage()));
                            },
                            child: Text(HomeText.view,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16))),
                      ],
                    ))
              ],
            ),
          ),

          SizedBox(
            height: 10,
          ),

          // ---  Customer Needs container ----- //

          Container(
            margin: const EdgeInsets.only(right: 20, left: 20),
            height: h / 1.2,
            width: w,
            decoration: BoxDecoration(
              color:
                  Colors.white.withAlpha(6), // Adjust opacity for glass effect
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(25),
                topLeft: Radius.circular(25),
              ),
              border: Border.all(
                color: Colors.green
                    .withAlpha(3), // Optional: border for better effect
              ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(25),
                topLeft: Radius.circular(25),
              ),
              child: BackdropFilter(
                filter:
                    ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0), // Blur effect
                child: Container(
                    alignment: Alignment.center,
                    color: Colors.white
                        .withAlpha(2), // Adjust opacity for inner container
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        //--- container why pepole text ---//
                        Container(
                          padding: const EdgeInsets.all(12.0),
                          height: 120,
                          width: w,
                          decoration: BoxDecoration(),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                HomeText.Why,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 32,
                                    color: Colors.black,
                                    decoration: TextDecoration.none),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                            child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            /// ------ Card 1 ---------- ///

                            Container(
                              height: 390,
                              width: 298,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.centerLeft,
                                    end: Alignment.bottomCenter,
                                    colors: <Color>[
                                      Color.fromARGB(255, 1, 9, 94),
                                      Color(0xFFAB2376)
                                    ]),
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color.fromARGB(255, 3, 6, 64),
                                    spreadRadius: 3,
                                    blurRadius: 25,
                                  )
                                ],
                              ),
                              child: Column(
                                children: [
                                  // ------ CArd 1 Text -------- //

                                  SizedBox(
                                    height: 40,
                                    width: w,
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            HomeText.card1,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18,
                                                color: Colors.white,
                                                decoration:
                                                    TextDecoration.none),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),

                                  // ------- Card2 msg ----- //
                                  SizedBox(
                                      height: 190,
                                      width: 298,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          HomeText.card1_msg,
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16,
                                              color: Colors.white,
                                              decoration: TextDecoration.none),
                                        ),
                                      )),

                                  Expanded(
                                      child: Image(
                                    image: AssetImage(HomeImage.Card1_image),
                                  ))
                                ],
                              ),
                            ),

                            // ------- CArd 2 ---------- //

                            Container(
                              margin: const EdgeInsets.all(12.0),
                              height: 390,
                              width: 298,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.centerLeft,
                                    end: Alignment.bottomCenter,
                                    colors: <Color>[
                                      Color.fromARGB(255, 1, 9, 94),
                                      Color(0xFFAB2376)
                                    ]),
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color.fromARGB(255, 3, 6, 64),
                                    spreadRadius: 3,
                                    blurRadius: 25,
                                  )
                                ],
                              ),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 40,
                                    width: w,
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            HomeText.card2,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18,
                                                color: Colors.white,
                                                decoration:
                                                    TextDecoration.none),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),

                                  // ---- Card 2 Msg ----- //

                                  SizedBox(
                                      height: 190,
                                      width: 298,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          HomeText.card2_msg,
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16,
                                              color: Colors.white,
                                              decoration: TextDecoration.none),
                                        ),
                                      )),
                                  Expanded(
                                      child: Image(
                                    image: AssetImage(HomeImage.card2_image),
                                  ))
                                ],
                              ),
                            ),

                            // ------- Card 3 --------- //

                            Container(
                              margin: const EdgeInsets.all(12.0),
                              height: 390,
                              width: 298,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.centerLeft,
                                    end: Alignment.bottomCenter,
                                    colors: <Color>[
                                      Color.fromARGB(255, 1, 9, 94),
                                      Color(0xFFAB2376)
                                    ]),
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color.fromARGB(255, 3, 6, 64),
                                    spreadRadius: 3,
                                    blurRadius: 25,
                                  )
                                ],
                              ),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 40,
                                    width: w,
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            HomeText.card3,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18,
                                                color: Colors.white,
                                                decoration:
                                                    TextDecoration.none),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),

                                  // -- Card 3 Msg ---- //

                                  SizedBox(
                                      height: 190,
                                      width: 298,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          HomeText.card3_msg,
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16,
                                              color: Colors.white,
                                              decoration: TextDecoration.none),
                                        ),
                                      )),
                                  Expanded(
                                      child: Image(
                                    image: AssetImage(HomeImage.Card4_image),
                                  ))
                                ],
                              ),
                            ),

                            // ------ card 4 ----------//

                            Container(
                              margin: const EdgeInsets.all(12.0),
                              height: 390,
                              width: 298,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.centerLeft,
                                    end: Alignment.bottomCenter,
                                    colors: <Color>[
                                      Color.fromARGB(255, 1, 9, 94),
                                      Color(0xFFAB2376)
                                    ]),
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color.fromARGB(255, 3, 6, 64),
                                    spreadRadius: 3,
                                    blurRadius: 25,
                                  )
                                ],
                              ),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 40,
                                    width: w,
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            HomeText.card4,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18,
                                                color: Colors.white,
                                                decoration:
                                                    TextDecoration.none),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),

                                  //-------- Card 4 Msg ---- //

                                  SizedBox(
                                      height: 190,
                                      width: 298,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          HomeText.card4_msg,
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15,
                                              color: Colors.white,
                                              decoration: TextDecoration.none),
                                        ),
                                      )),
                                  Expanded(
                                      child: Image(
                                    image: AssetImage(HomeImage.Card3_image),
                                  ))
                                ],
                              ),
                            ),
                          ],
                        )),
                      ],
                    )),
              ),
            ),
          ),

          // -------- About contact Details Container --------- //

          Container(
            height: 265,
            width: w,
            decoration: BoxDecoration(
                color: Colors.grey.shade600,
                image: DecorationImage(
                    image: AssetImage('assets/homebgimage.png'),
                    fit: BoxFit.cover)),
            child: Row(
              children: [
                // -- About us Conatiner on About -- //
                SizedBox(
                  height: 265,
                  width: w / 3,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: Text(
                          HomeText.about,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                              decoration: TextDecoration.none,
                              color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          HomeText.About_con_txt,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                // --- container 2 -- About -- container -- //
                SizedBox(
                  height: 265,
                  width: w / 3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 2.0),
                        child: Text(
                          HomeText.Pop_tour,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            decoration: TextDecoration.none,
                            fontSize: 24,
                          ),
                        ),
                      ),
                      Text(
                        HomeText.Mad_tour,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      Text(
                        HomeText.KK_tour,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      Text(
                        HomeText.Ram_tour,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      Text(
                        HomeText.Tiru_tour,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          decoration: TextDecoration.none,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 265,
                  width: w / 3,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          'Call Us:-',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            decoration: TextDecoration.none,
                            fontSize: 24,
                          ),
                        ),
                      ),
                      Text(
                        '+91 9842185596',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          decoration: TextDecoration.none,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ]),
      ),
    ),
  );
}

Widget mobileAbout(BuildContext context) {
  final double w = MediaQuery.of(context).size.width;
  final double h = MediaQuery.of(context).size.height;
  return Scaffold(
      body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          physics: BouncingScrollPhysics(),
          child: Column(children: [
            Center(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Center(
                      child: Column(
                        children: [
                          Row(children: [
                            NavButton('Home', context),
                            NavButton('About', context),
                            NavButton('Destinations', context),
                          ]),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: h / 3,
              width: w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2),
                  color: Colors.grey.shade50,
                  image: DecorationImage(
                      opacity: 20,
                      image: AssetImage(HomeImage.MD_about_banner),
                      fit: BoxFit.cover)),
            ),

            SizedBox(
              height: 10,
            ),

            Container(
              padding: const EdgeInsets.all(12.0),
              height: 120,
              width: w,
              decoration: BoxDecoration(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    HomeText.Why,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: w < 600 ? 24 : 18,
                        color: Colors.black,
                        decoration: TextDecoration.none),
                  ),
                ],
              ),
            ),

            /// ---------- Card 1 ----------- ///

            Container(
              height: 390,
              width: 298,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.bottomCenter,
                    colors: <Color>[
                      Color.fromARGB(255, 1, 9, 94),
                      Color(0xFFAB2376)
                    ]),
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 3, 6, 64),
                    spreadRadius: 3,
                    blurRadius: 25,
                  )
                ],
              ),
              child: Column(
                children: [
                  // ------ CArd 1 Text -------- //

                  SizedBox(
                    height: 40,
                    width: w,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            HomeText.card1,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.white,
                                decoration: TextDecoration.none),
                          ),
                        )
                      ],
                    ),
                  ),

                  // ------- Card2 msg ----- //
                  SizedBox(
                      height: 190,
                      width: 298,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          HomeText.card1_msg,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.white,
                              decoration: TextDecoration.none),
                        ),
                      )),

                  Expanded(
                      child: Image(
                    image: AssetImage(HomeImage.Card1_image),
                  ))
                ],
              ),
            ),

            SizedBox(
              height: 20,
            ),

            /// CArd 2 --------------- ///

            Container(
                margin: const EdgeInsets.all(12.0),
                height: 390,
                width: 298,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.bottomCenter,
                      colors: <Color>[
                        Color.fromARGB(255, 1, 9, 94),
                        Color(0xFFAB2376)
                      ]),
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(255, 3, 6, 64),
                      spreadRadius: 3,
                      blurRadius: 25,
                    )
                  ],
                ),
                child: Column(children: [
                  SizedBox(
                    height: 40,
                    width: w,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            HomeText.card2,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.white,
                                decoration: TextDecoration.none),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                      height: 190,
                      width: 298,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          HomeText.card2_msg,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.white,
                              decoration: TextDecoration.none),
                        ),
                      )),
                  Expanded(
                      // ignore: avoid_unnecessary_containers
                      child: Container(
                          child: Image(
                    image: AssetImage(HomeImage.card2_image),
                  )))
                ])),

            Container(
              margin: const EdgeInsets.all(12.0),
              height: 390,
              width: 298,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.bottomCenter,
                    colors: <Color>[
                      Color.fromARGB(255, 1, 9, 94),
                      Color(0xFFAB2376)
                    ]),
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 3, 6, 64),
                    spreadRadius: 3,
                    blurRadius: 25,
                  )
                ],
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 40,
                    width: w,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            HomeText.card3,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.white,
                                decoration: TextDecoration.none),
                          ),
                        )
                      ],
                    ),
                  ),

                  // -- Card 3 Msg ---- //

                  SizedBox(
                      height: 190,
                      width: 298,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          HomeText.card3_msg,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.white,
                              decoration: TextDecoration.none),
                        ),
                      )),
                  Expanded(
                      child: Image(
                    image: AssetImage(HomeImage.Card4_image),
                  ))
                ],
              ),
            ),

            // ------ card 4 ----------//

            Container(
              margin: const EdgeInsets.all(12.0),
              height: 390,
              width: 298,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.bottomCenter,
                    colors: <Color>[
                      Color.fromARGB(255, 1, 9, 94),
                      Color(0xFFAB2376)
                    ]),
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 3, 6, 64),
                    spreadRadius: 3,
                    blurRadius: 25,
                  )
                ],
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 40,
                    width: w,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            HomeText.card4,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.white,
                                decoration: TextDecoration.none),
                          ),
                        )
                      ],
                    ),
                  ),

                  //-------- Card 4 Msg ---- //

                  SizedBox(
                      height: 190,
                      width: 298,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          HomeText.card4_msg,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.white,
                              decoration: TextDecoration.none),
                        ),
                      )),
                  Expanded(
                      child: Image(
                    image: AssetImage(HomeImage.Card3_image),
                  )),
                ],
              ),
            ),
            BannerWidget(),
            SizedBox(
              height: Tsize.spaceBtwSections, // Reduced for mobile
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
          ])));
}
