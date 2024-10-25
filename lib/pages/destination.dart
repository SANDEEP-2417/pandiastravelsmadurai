import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:responsive_builder/responsive_builder.dart';
import 'package:three/utils/image.dart';
import 'package:three/utils/listIteam.dart';
import 'package:three/utils/text.dart';
import 'package:three/widgets/NavBar.dart';
import 'package:three/widgets/banner.dart';
import 'package:three/widgets/tourPackage.dart';

class DestinationPage extends StatefulWidget {
  const DestinationPage({super.key});

  @override
  State<DestinationPage> createState() => _DestinationPageState();
}

class _DestinationPageState extends State<DestinationPage> {
  @override
  Widget build(BuildContext context) {
    // ignore: avoid_types_as_parameter_names, non_constant_identifier_names
    return ResponsiveBuilder(builder: (context, SizingInformation) {
      if (SizingInformation.deviceScreenType == DeviceScreenType.desktop) {
        return DesktopDestination(context);
      } else {
        return MobileDestination(context);
      }
    });
  }
}

// ignore: non_constant_identifier_names
Widget DesktopDestination(BuildContext context) {
  final double w = MediaQuery.of(context).size.width;
  final double h = MediaQuery.of(context).size.height;
  return Scaffold(
    body: SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Center(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
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
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Stack(children: [
            Container(
              height: h / 2.5,
              width: w,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(HomeImage.Pack_bg), fit: BoxFit.cover)),
            ),
            Opacity(
              opacity: 0.8,
              child: Container(
                height: h / 2.5,
                width: w,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: <Color>[
                        Color.fromARGB(255, 1, 9, 94),
                        Color(0xFFAB2376)
                      ]),
                ),
              ),
            ),
            Positioned(
              top: h / 6,
              left: w / 2.3,
              child: Text(
                HomeText.Pack,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 34,
                  color: Colors.white,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
          ]),

          SizedBox(
            height: 15,
          ),

          // --- Our Packages --- //

          SizedBox(
            height: h / 5.5,
            width: w,
            child: Center(
              child: Column(
                children: [
                  Text(
                    HomeText.our_pack,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: Colors.black,
                        decoration: TextDecoration.none),
                  ),
                  Container(
                      margin: const EdgeInsets.only(left: 120, right: 120),
                      child: Text(
                        HomeText.our_text,
                        style: TextStyle(fontSize: 16),
                      )),
                  Container(
                      margin: const EdgeInsets.only(left: 120, right: 120),
                      child: Center(
                        child: Text(
                          HomeText.our_ext,
                          style: TextStyle(fontSize: 16),
                        ),
                      )),
                ],
              ),
            ),
          ),

          SizedBox(
            height: 12,
          ),

          // --- Tour Pakage Contianer --- //

          Container(
            height: h + h / 1.5,
            width: w,
            decoration: BoxDecoration(
                color: Colors.white54, border: Border.all(color: Colors.black)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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

                    // --- Container 2 --- //

                    // --- container 3 --- //
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // --- container 4 --- //

                    TourPack_MD(
                        TDesText: HomeText.Tiru_Pack_des,
                        HSize: 434,
                        WSize: 334,
                        Timage: HomeImage.Tir_tour_img,
                        THeadText: HomeText.tiru_name,
                        Font: 18,
                        Titeam: TiteamList.Tiru_Pack_place),

                    TourPack_MD(
                        TDesText: HomeText.Kodai_Pack_des,
                        HSize: 434,
                        WSize: 334,
                        Timage: HomeImage.Kodai_image,
                        THeadText: HomeText.kodai_name,
                        Font: 18,
                        Titeam: TiteamList.Kodai_Pack_place),

                    TourPack_MD(
                        TDesText: HomeText.Ooty_Pack_des,
                        HSize: 434,
                        WSize: 334,
                        Timage: HomeImage.Ooty_img,
                        THeadText: HomeText.OOty_name,
                        Font: 18,
                        Titeam: TiteamList.Ooty_Pack_place),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 45,
          ),

          BannerWidget()
        ],
      ),
    ),
  );
}

// ignore: non_constant_identifier_names
Widget MobileDestination(BuildContext context) {
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
          Stack(
            children: [
              Container(
                height: h / 3,
                width: w,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(HomeImage.Pack_bg),
                        fit: BoxFit.cover)),
              ),
              Opacity(
                opacity: 0.8,
                child: Container(
                  height: h / 3,
                  width: w,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: <Color>[
                          Color.fromARGB(255, 1, 9, 94),
                          Color(0xFFAB2376)
                        ]),
                  ),
                ),
              ),
              Positioned(
                top: h / 7,
                left: w / 2.8,
                child: Text(
                  HomeText.Pack,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: w / 15,
                    color: Colors.white,
                    decoration: TextDecoration.none,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),

          // --- Our Packages --- //

          SizedBox(
              height: h / 4,
              width: w,
              child: Center(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                    Text(
                      HomeText.our_pack,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: w / 20,
                          color: Colors.black,
                          decoration: TextDecoration.none),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Container(
                        margin: const EdgeInsets.only(
                          left: 15,
                        ),
                        child: Center(
                          child: Text(
                            HomeText.our_text,
                            style: TextStyle(fontSize: w / 30),
                          ),
                        )),
                  ]))),

          SizedBox(
            height: 12,
          ),

          SizedBox(
              height: h * 3.1,
              width: w,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          TourPack_MD(
                              TDesText: HomeText.MD_Pack_des,
                              HSize: 434,
                              WSize: 334,
                              Timage: HomeImage.MD_tour_img,
                              THeadText: HomeText.mdu_name,
                              Font: w / 30,
                              Titeam: TiteamList.MD_Pack_place),
                          SizedBox(
                            height: 25,
                          ),
                          TourPack_MD(
                              TDesText: HomeText.KK_Pack_des,
                              HSize: 434,
                              WSize: 334,
                              Timage: HomeImage.KK_tour_img,
                              THeadText: HomeText.mdu_name,
                              Font: w / 30,
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
                              Font: w / 30,
                              Titeam: TiteamList.Ram_Pack_place),
                          SizedBox(
                            height: 25,
                          ),
                          TourPack_MD(
                              TDesText: HomeText.Tiru_Pack_des,
                              HSize: 434,
                              WSize: 334,
                              Timage: HomeImage.Tir_tour_img,
                              THeadText: HomeText.tiru_name,
                              Font: w / 30,
                              Titeam: TiteamList.Tiru_Pack_place),
                          SizedBox(
                            height: 25,
                          ),
                          TourPack_MD(
                              TDesText: HomeText.Kodai_Pack_des,
                              HSize: 434,
                              WSize: 334,
                              Timage: HomeImage.Kodai_image,
                              THeadText: HomeText.kodai_name,
                              Font: w / 30,
                              Titeam: TiteamList.Kodai_Pack_place),
                          SizedBox(
                            height: 25,
                          ),
                          TourPack_MD(
                              TDesText: HomeText.Ooty_Pack_des,
                              HSize: 434,
                              WSize: 334,
                              Timage: HomeImage.Ooty_img,
                              THeadText: HomeText.OOty_name,
                              Font: w / 30,
                              Titeam: TiteamList.Ooty_Pack_place),
                        ]),
                  ])),
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
        ])),
  );
}
