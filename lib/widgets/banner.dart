import 'package:flutter/material.dart';
import 'package:three/pages/destination.dart';
import 'package:three/utils/functions.dart';
import 'package:three/utils/image.dart';
import 'package:three/utils/text.dart';
// ignore: depend_on_referenced_packages
import 'package:responsive_builder/responsive_builder.dart';

class BannerWidget extends StatefulWidget {
  const BannerWidget({super.key});

  @override
  State<BannerWidget> createState() => _BannerWidgetState();
}

class _BannerWidgetState extends State<BannerWidget> {
  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names, avoid_types_as_parameter_names
    return ResponsiveBuilder(builder: (context, SizingInformation) {
      if (SizingInformation.deviceScreenType == DeviceScreenType.desktop) {
        return DesktopBanner(context);
      } else {
        return MobileBanner(context);
      }
    });
  }
}

Widget DesktopBanner(BuildContext context) {
  final double w = MediaQuery.of(context).size.width;
  final double h = MediaQuery.of(context).size.height;
  return Column(children: [
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
                      border:
                          Border.all(color: Color.fromARGB(255, 2, 206, 60)),
                      color: Color(0xFF29ACA0),
                      borderRadius: BorderRadius.all(Radius.circular(170))))),

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
                          backgroundColor: Color.fromARGB(255, 181, 8, 166),
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
                          backgroundColor: Color.fromARGB(255, 181, 8, 166),
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
                          backgroundColor: Color.fromARGB(255, 181, 8, 166),
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
  ]);
}

Widget MobileBanner(BuildContext context) {
  final double w = MediaQuery.of(context).size.width;
  final double h = MediaQuery.of(context).size.height;
  // ignore: sized_box_for_whitespace
  return Container(
    height: h * 0.40,
    width: w,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: h * 0.20,
          
          width: w * 0.45,
          margin: const EdgeInsets.only(left: 15, top: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 40,
                width: w * 0.40,
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
                      message:
                          'Hello, I like to book a package On your Travels',
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(
                        image: AssetImage(HomeImage.Whats_logo),
                        height: 18, // Reduce size for mobile
                        width: 18, // Reduce size for mobile
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        HomeText.WhatsAPP,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 14, // Reduce font size for mobile
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10, // Reduce space for mobile
              ),
              //--- Call Button --- //
              SizedBox(
                height: 40,
                width: w * 0.40,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 181, 8, 166),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    shadowColor: Color.fromARGB(255, 2, 206, 60),
                    elevation: 3, // Reduce elevation for mobile
                  ),
                  onPressed: () {
                    TFunctions.launchCaller('9842185596');
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.call,
                        size: 16, // Reduce size for mobile
                        color: Colors.white,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        HomeText.Call,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 14, // Reduce font size for mobile
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // ---- View package button --- //
              SizedBox(
                width: 10, // Reduce space for mobile
              ),
              SizedBox(
                height: 40,
                width: w * 0.40,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 181, 8, 166),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    shadowColor: Color.fromARGB(255, 2, 206, 60),
                    elevation: 3, // Reduce elevation for mobile
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DestinationPage()),
                    );
                  },
                  child: Text(
                    HomeText.view,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 14, // Reduce font size for mobile
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
