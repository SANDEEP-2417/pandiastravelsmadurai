// ignore_for_file: file_names, depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:three/pages/HomeTitle.dart';
import 'package:three/pages/MobHomePage.dart';
import 'package:three/utils/image.dart';
import 'package:three/utils/listIteam.dart';
import 'package:three/utils/size.dart';
import 'package:three/utils/text.dart';
import 'package:three/widgets/banner.dart';
import 'package:three/widgets/NavBar.dart';
import 'package:three/widgets/tourPackage.dart';

class ScreenType extends StatefulWidget {
  const ScreenType({super.key, required this.mobile, required this.desktop});

  final Widget mobile;
  final Widget desktop;

  @override
  State<ScreenType> createState() => _ScreenTypeState();
}

class _ScreenTypeState extends State<ScreenType> {
  @override
  Widget build(BuildContext context) {
    // ignore: avoid_types_as_parameter_names
    return ResponsiveBuilder(builder: (context, SizingInformation) {
      if (SizingInformation.deviceScreenType == DeviceScreenType.desktop) {
        return desktop(context);
      } else {
        return mobile(context);
      }
    });
  }
}

Widget mobile(BuildContext context) {
  final double h = MediaQuery.of(context).size.height;
  final double w = MediaQuery.of(context).size.width;
  return Container(
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
  );
}

Widget desktop(BuildContext context) {
  final double h = MediaQuery.of(context).size.height;
  final double w = MediaQuery.of(context).size.width;
  return Center(
    child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
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
                      HomeTitle(context),
                    ],
                  ),
                ),
              ],
            ),
            BannerWidget(),
            SizedBox(
              height: Tsize.spaceBtwSections,
            ),
            SizedBox(
              height: h * 0.08,
              width: w,
              child: Text(
                textAlign: TextAlign.center,
                'Popular Packages',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: w / 45,
                    color: Colors.black),
              ),
            ),
            SizedBox(
              height: Tsize.spaceBtwSections,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
              child: SizedBox(
                height: h * 0.75,
                width: w,
                child: Row(
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
                    TourPack_MD(
                        TDesText: HomeText.KK_Pack_des,
                        HSize: 475,
                        WSize: 334,
                        Timage: HomeImage.KK_tour_img,
                        THeadText: HomeText.KK_name,
                        Font: 18,
                        Titeam: TiteamList.KK_Pack_place),
                    TourPack_MD(
                        TDesText: HomeText.Ram_Pack_des,
                        HSize: 475,
                        WSize: 334,
                        Timage: HomeImage.ram_tour_img,
                        THeadText: HomeText.Ram_name,
                        Font: 18,
                        Titeam: TiteamList.Ram_Pack_place),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: Tsize.spaceBtwSections,
            ),
            Container(
              height: 265,
              width: w,
              decoration: BoxDecoration(
                  color: Colors.grey.shade600,
                  image: DecorationImage(
                      image: AssetImage('assets/homebgimage.png'),
                      fit: BoxFit.cover)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                    width: 165,
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
          ],
        )),
  );
}
