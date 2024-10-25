// ignore_for_file: file_names, depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:three/utils/text.dart';
import 'package:three/widgets/NavBar.dart';
import 'package:three/widgets/banner.dart';
import 'package:responsive_builder/responsive_builder.dart';

class TourPlacePage extends StatefulWidget {
  const TourPlacePage({
    super.key,
    // ignore: non_constant_identifier_names
    required this.Banner_head_text_1,
    required this.image_h,
    required this.image_w,
    required this.text_size,
    required this.container_image,
    required this.banner_image_1,
    required this.banner_image_2,
    required this.banner_image_3,
    required this.banner_image_4,
    required this.Banner_head_text_2,
    required this.Banner_head_text_3,
    required this.Banner_head_text_4,
    required this.PlaceName,
    required this.Para_text_1,
    required this.Para_text_2,
    required this.Para_text_3,
    required this.Para_text_4,
    required this.place_C1_image_1,
    required this.place_C1_image_2,
    required this.place_C1_image_3,
    required this.place_C2_image_1,
    required this.place_C2_image_2,
    required this.place_C2_image_3,
    required this.place_C3_image_1,
    required this.place_C3_image_2,
    required this.place_C3_image_3,
    required this.place_C4_image_1,
    required this.place_C4_image_2,
    required this.place_C4_image_3,
  });

  final String PlaceName;
  final String banner_image_1;
  final String banner_image_2;
  final String banner_image_3;
  final String banner_image_4;

  final String Banner_head_text_1;
  final String Banner_head_text_2;
  final String Banner_head_text_3;
  final String Banner_head_text_4;

  final String Para_text_1;
  final String Para_text_2;
  final String Para_text_3;
  final String Para_text_4;

  final String place_C1_image_1;
  final String place_C1_image_2;
  final String place_C1_image_3;

  final String place_C2_image_1;
  final String place_C2_image_2;
  final String place_C2_image_3;

  final String place_C3_image_1;
  final String place_C3_image_2;
  final String place_C3_image_3;

  final String place_C4_image_1;
  final String place_C4_image_2;
  final String place_C4_image_3;

  final double image_h;
  final double image_w;
  final double text_size;
  final String container_image;

  @override
  State<TourPlacePage> createState() => _TourPlacePageState();
}

class _TourPlacePageState extends State<TourPlacePage> {
  @override
  Widget build(BuildContext context) {
    return TourPlace(
      context,
      widget.container_image,
      widget.banner_image_1,
      widget.banner_image_2,
      widget.banner_image_3,
      widget.banner_image_4,
      widget.Banner_head_text_1,
      widget.Banner_head_text_2,
      widget.Banner_head_text_3,
      widget.Banner_head_text_4,
      widget.PlaceName,
      widget.Para_text_1,
      widget.Para_text_2,
      widget.Para_text_3,
      widget.Para_text_4,
      widget.place_C1_image_1,
      widget.place_C1_image_2,
      widget.place_C1_image_3,
      widget.place_C2_image_1,
      widget.place_C2_image_2,
      widget.place_C2_image_3,
      widget.place_C3_image_1,
      widget.place_C3_image_2,
      widget.place_C3_image_3,
      widget.place_C4_image_1,
      widget.place_C4_image_2,
      widget.place_C4_image_3,
      widget.text_size,
    );
  }
}

Widget TourPlace(
  BuildContext context,
  String container_image,
  String banner_image_1,
  String banner_image_2,
  String banner_image_3,
  String banner_image_4,
  String Banner_head_text_1,
  String Banner_head_text_2,
  String Banner_head_text_3,
  String Banner_head_text_4,
  String PlaceName,
  String Para_text_1,
  String Para_text_2,
  String Para_text_3,
  String Para_text_4,
  String place_C1_image_1,
  String place_C1_image_2,
  String place_C1_image_3,
  String place_C2_image_1,
  String place_C2_image_2,
  String place_C2_image_3,
  String place_C3_image_1,
  String place_C3_image_2,
  String place_C3_image_3,
  String place_C4_image_1,
  String place_C4_image_2,
  String place_C4_image_3,
  double text_size,
) {
  // ignore: avoid_types_as_parameter_names
  return ResponsiveBuilder(builder: (context, SizingInformation) {
    if (SizingInformation.deviceScreenType == DeviceScreenType.desktop) {
      return DesktopTourPlace(
        context,
        container_image,
        banner_image_1,
        banner_image_2,
        banner_image_3,
        banner_image_4,
        Banner_head_text_1,
        Banner_head_text_2,
        Banner_head_text_3,
        Banner_head_text_4,
        PlaceName,
        Para_text_1,
        Para_text_2,
        Para_text_3,
        Para_text_4,
        place_C1_image_1,
        place_C1_image_2,
        place_C1_image_3,
        place_C2_image_1,
        place_C2_image_2,
        place_C2_image_3,
        place_C3_image_1,
        place_C3_image_2,
        place_C3_image_3,
        place_C4_image_1,
        place_C4_image_2,
        place_C4_image_3,
        text_size,
      );
    } else {
      return MobileTourPlace(
        context,
        container_image,
        banner_image_1,
        banner_image_2,
        banner_image_3,
        banner_image_4,
        Banner_head_text_1,
        Banner_head_text_2,
        Banner_head_text_3,
        Banner_head_text_4,
        PlaceName,
        Para_text_1,
        Para_text_2,
        Para_text_3,
        Para_text_4,
        place_C1_image_1,
        place_C1_image_2,
        place_C1_image_3,
        place_C2_image_1,
        place_C2_image_2,
        place_C2_image_3,
        place_C3_image_1,
        place_C3_image_2,
        place_C3_image_3,
        place_C4_image_1,
        place_C4_image_2,
        place_C4_image_3,
        text_size,
      );
    }
  });
}

Widget DesktopTourPlace(
  BuildContext context,
  String b_image,
  String C_image_1,
  String C_image_2,
  String C_image_3,
  String C_image_4,
  String bH_text_1,
  String bh_text_2,
  String bh_text_3,
  String bh_text_4,
  String Place_name,
  String Para_text_1,
  String Para_text_2,
  String Para_text_3,
  String Para_text_4,
  String C1_sub_image_1,
  String C1_sub_image_2,
  String C1_sub_image_3,
  String C2_sub_image_1,
  String C2_sub_image_2,
  String C2_sub_image_3,
  String C3_sub_image_1,
  String C3_sub_image_2,
  String C3_sub_image_3,
  String C4_sub_image_1,
  String C4_sub_image_2,
  String C4_sub_iamge_3,
  double fontSize,
) {
  final double w = MediaQuery.of(context).size.width;
  final double h = MediaQuery.of(context).size.height;
  return Scaffold(
    body: SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      child: Column(children: [
        Container(
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

        /// ----------  Navigation Bar -------------------- ///

        Stack(children: [
          Container(
            height: h / 2.5,
            width: w,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(b_image), fit: BoxFit.cover)),
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
                )),
          ),
          Positioned(
            top: h / 6,
            left: w / 2.3,
            child: Text(
              Place_name,
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
          height: 24,
        ),

        Container(
          margin: const EdgeInsets.only(left: 28),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                bH_text_1,
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),

        SizedBox(
          height: 10,
        ),

        // ------Container 1 Banner --------- //
        Container(
          margin: const EdgeInsets.only(left: 15, right: 15),
          height: h / 2,
          width: w,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // ------- contaienr image -------- //
              Container(
                height: h / 2,
                width: w / 3,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: AssetImage(C_image_1),
                      fit: BoxFit.cover,
                    )),
              ),

              SizedBox(
                width: 10,
              ),

              // -------- container text  container ---------- //

              SizedBox(
                  height: h / 2,
                  width: w / 1.7,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: w,
                        height: 200,
                        child: Text(
                          Para_text_1,
                          style: TextStyle(fontSize: fontSize),
                        ),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              height: 200,
                              width: 250,
                              child: Image(
                                image: AssetImage(C1_sub_image_1),
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            SizedBox(
                              height: 200,
                              width: 250,
                              child: Image(
                                image: AssetImage(C1_sub_image_2),
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            SizedBox(
                              height: 200,
                              width: 250,
                              child: Image(
                                image: AssetImage(C1_sub_image_3),
                                fit: BoxFit.cover,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ))
            ],
          ),
        ),

        // ----- container ------ 3 ---- //

        SizedBox(
          height: 24,
        ),

        Container(
          margin: const EdgeInsets.only(left: 28),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                bh_text_2,
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),

        SizedBox(
          height: 10,
        ),

        Container(
          margin: const EdgeInsets.only(left: 15, right: 15),
          height: h / 2,
          width: w,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // -------- container text  container ---------- //

              SizedBox(
                  height: h / 2,
                  width: w / 1.7,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: w,
                        height: 200,
                        child: Text(
                          Para_text_2,
                          style: TextStyle(fontSize: fontSize),
                        ),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              height: 200,
                              width: 250,
                              child: Image(
                                image: AssetImage(C2_sub_image_1),
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            SizedBox(
                              height: 200,
                              width: 250,
                              child: Image(
                                image: AssetImage(C2_sub_image_2),
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            SizedBox(
                              height: 200,
                              width: 250,
                              child: Image(
                                image: AssetImage(C2_sub_image_3),
                                fit: BoxFit.cover,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  )),

              SizedBox(
                width: 10,
              ),

              // ------- contaienr image -------- //
              Container(
                height: h / 2,
                width: w / 3,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: AssetImage(C_image_2),
                      fit: BoxFit.cover,
                    )),
              ),
            ],
          ),
        ),

        SizedBox(
          height: 24,
        ),

        Container(
          margin: const EdgeInsets.only(left: 28),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                bh_text_3,
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),

        SizedBox(
          height: 10,
        ),

        Container(
          margin: const EdgeInsets.only(left: 15, right: 15),
          height: h / 2,
          width: w,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // ------- contaienr image -------- //
              Container(
                height: h / 2,
                width: w / 3,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: AssetImage(C_image_3),
                      fit: BoxFit.cover,
                    )),
              ),

              SizedBox(
                width: 10,
              ),

              // -------- container text  container ---------- //

              SizedBox(
                  height: h / 2,
                  width: w / 1.7,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: w,
                        height: 200,
                        child: Text(
                          Para_text_3,
                          style: TextStyle(fontSize: fontSize),
                        ),
                      ),

                      // --------- Image Row Container --------- //

                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              height: 200,
                              width: 250,
                              child: Image(
                                image: AssetImage(C3_sub_image_1),
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            SizedBox(
                              height: 200,
                              width: 250,
                              child: Image(
                                image: AssetImage(C3_sub_image_2),
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            SizedBox(
                              height: 200,
                              width: 250,
                              child: Image(
                                image: AssetImage(C3_sub_image_3),
                                fit: BoxFit.cover,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ))
            ],
          ),
        ),

        // -------- Banner --------- pandias banner --------- //

        SizedBox(
          height: 20,
        ),

        BannerWidget(),

        SizedBox(
          height: 55,
        ),

        Text(
          'Call or Whatsapp Us',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
        ),

        SizedBox(
          height: 5,
        ),

        Text(
          'to create unforgettable travel experiences',
          style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
        ),

        SizedBox(
          height: 22,
        ),

        SizedBox(
          height: 24,
        ),

        Container(
          margin: const EdgeInsets.only(left: 28),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                bh_text_4,
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),

        SizedBox(
          height: 10,
        ),

        Container(
          margin: const EdgeInsets.only(left: 15, right: 15),
          height: h / 2,
          width: w,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // ------- contaienr image -------- //
              Container(
                height: h / 2,
                width: w / 3,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: AssetImage(C_image_4),
                      fit: BoxFit.cover,
                    )),
              ),

              SizedBox(
                width: 10,
              ),

              // -------- container text  container ---------- //

              SizedBox(
                  height: h / 2,
                  width: w / 1.7,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: w,
                        height: 200,
                        child: Text(
                          Para_text_4,
                          style: TextStyle(fontSize: fontSize),
                        ),
                      ),

                      // --------- Image Row Container --------- //

                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              height: 200,
                              width: 250,
                              child: Image(
                                image: AssetImage(C4_sub_image_1),
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            SizedBox(
                              height: 200,
                              width: 250,
                              child: Image(
                                image: AssetImage(C4_sub_image_2),
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            SizedBox(
                              height: 200,
                              width: 250,
                              child: Image(
                                image: AssetImage(C4_sub_iamge_3),
                                fit: BoxFit.cover,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ))
            ],
          ),
        ),

        SizedBox(
          height: 40,
        ),

        Text(
          'Customize The package',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
        ),

        SizedBox(
          height: 5,
        ),

        Text(
          'Arrange locations according to your schedule and preferences. Contact us on WhatsApp or give us a call.',
          style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
        ),

        SizedBox(
          height: 50,
        ),

        ////// ---------- About Container --------- /////

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
                      padding: const EdgeInsets.only(left: 20),
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
  );
}

Widget MobileTourPlace(
  BuildContext context,
  String b_image,
  String C_image_1,
  String C_image_2,
  String C_image_3,
  String C_image_4,
  String bH_text_1,
  String bh_text_2,
  String bh_text_3,
  String bh_text_4,
  String Place_name,
  String Para_text_1,
  String Para_text_2,
  String Para_text_3,
  String Para_text_4,
  String C1_sub_image_1,
  String C1_sub_image_2,
  String C1_sub_image_3,
  String C2_sub_image_1,
  String C2_sub_image_2,
  String C2_sub_image_3,
  String C3_sub_image_1,
  String C3_sub_image_2,
  String C3_sub_image_3,
  String C4_sub_image_1,
  String C4_sub_image_2,
  String C4_sub_iamge_3,
  double fontSize,
) {
  final double w = MediaQuery.of(context).size.width;
  final double h = MediaQuery.of(context).size.height;
  return Scaffold(
    body: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
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
          Stack(children: [
            Container(
              height: h * 0.30,
              width: w,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(b_image), fit: BoxFit.cover)),
            ),
            Opacity(
              opacity: 0.8,
              child: Container(
                height: h * 0.30,
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
                child: Center(
                  child: Text(
                    Place_name,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 26),
                  ),
                ),
              ),
            ),
          ]),
          SizedBox(
            height: 10, // Adjust height for mobile
          ),
          SizedBox(
            height: 10, // Adjust height for mobile
          ),
          Container(
            margin: const EdgeInsets.symmetric(
                horizontal: 8), // Adjust margins for mobile
            child: Row(
              mainAxisAlignment:
                  MainAxisAlignment.center, // Center the text for mobile
              children: [
                Text(
                  bH_text_1,
                  style: TextStyle(
                    fontSize: 20, // Reduced font size for mobile
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 8, // Adjust height for mobile
          ),
          Container(
            margin: const EdgeInsets.symmetric(
                horizontal: 8), // Adjust margins for mobile
            height: h * 0.87, // Reduced height for mobile
            width: w,

            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              // Change Row to Column for vertical stacking
              children: [
                // ------- container image -------- //
                Container(
                  height: h * 0.35, // Reduced height for mobile
                  width: w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: AssetImage(C_image_1),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                SizedBox(
                  height: 8, // Adjust height for mobile
                ),

                // -------- container text container ---------- //
                SizedBox(
                  height: h * 0.35, // Reduced height for mobile
                  width: w,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        Para_text_1,
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 14),
                      ),

                      // --------- Image Row Container --------- //
                    ],
                  ),
                ),

                SizedBox(
                  height: 100,
                  width: w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        height: 100,
                        width: 120,
                        child: Image(
                          image: AssetImage(C1_sub_image_1),
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        height: 100,
                        width: 120,
                        child: Image(
                          image: AssetImage(C1_sub_image_2),
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        height: 100,
                        width: 120,
                        child: Image(
                          image: AssetImage(C1_sub_image_3),
                          fit: BoxFit.cover,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(
                horizontal: 8), // Adjust margins for mobile
            child: Row(
              mainAxisAlignment:
                  MainAxisAlignment.center, // Center the text for mobile
              children: [
                Text(
                  bh_text_2,
                  style: TextStyle(
                    fontSize: 20, // Reduced font size for mobile
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 8, // Adjust height for mobile
          ),
          Container(
            margin: const EdgeInsets.symmetric(
                horizontal: 8), // Adjust margins for mobile
            height: h * 0.87, // Reduced height for mobile
            width: w,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              // Change Row to Column for vertical stacking
              children: [
                // ------- container image -------- //
                Container(
                  height: h / 2.5, // Reduced height for mobile
                  width: w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: AssetImage(C_image_2),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                SizedBox(
                  height: 8, // Adjust height for mobile
                ),

                // -------- container text container ---------- //
                SizedBox(
                  height: 265, // Reduced height for mobile
                  width: w,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        Para_text_2,
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 14),
                      ),
                      SizedBox(
                        height: 45,
                      ),

                      // --------- Image Row Container --------- //
                    ],
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                SizedBox(
                  height: 100,
                  width: w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        height: 100,
                        width: 120,
                        child: Image(
                          image: AssetImage(C1_sub_image_1),
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        height: 100,
                        width: 120,
                        child: Image(
                          image: AssetImage(C2_sub_image_2),
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        height: 100,
                        width: 120,
                        child: Image(
                          image: AssetImage(C2_sub_image_3),
                          fit: BoxFit.cover,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10, // Adjust height for mobile
          ),
          Container(
            margin: const EdgeInsets.symmetric(
                horizontal: 8), // Adjust margins for mobile
            child: Row(
              mainAxisAlignment:
                  MainAxisAlignment.center, // Center the text for mobile
              children: [
                Text(
                  bh_text_3,
                  style: TextStyle(
                    fontSize: 20, // Reduced font size for mobile
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 8, // Adjust height for mobile
          ),
          Container(
            margin: const EdgeInsets.symmetric(
                horizontal: 8), // Adjust margins for mobile
            height: h * 0.87, // Reduced height for mobile
            width: w,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              // Change Row to Column for vertical stacking
              children: [
                // ------- container image -------- //
                Container(
                  height: h / 2.5, // Reduced height for mobile
                  width: w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: AssetImage(C_image_3),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                SizedBox(
                  height: 8, // Adjust height for mobile
                ),

                // -------- container text container ---------- //
                SizedBox(
                  height: 289, // Reduced height for mobile
                  width: w,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        Para_text_3,
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 14),
                      ),
                      SizedBox(
                        height: 45,
                      ),

                      // --------- Image Row Container --------- //
                    ],
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                SizedBox(
                  height: 100,
                  width: w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        height: 100,
                        width: 120,
                        child: Image(
                          image: AssetImage(C3_sub_image_1),
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        height: 100,
                        width: 120,
                        child: Image(
                          image: AssetImage(C3_sub_image_2),
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        height: 100,
                        width: 120,
                        child: Image(
                          image: AssetImage(C3_sub_image_3),
                          fit: BoxFit.cover,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 35,
          ),
          BannerWidget(),
          SizedBox(
            height: 20, // Reduced height for mobile
          ),
          Text(
            'Call or Whatsapp Us',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20, // Reduced font size for mobile
            ),
          ),
          SizedBox(
            height: 10, // Adjust height for mobile
          ),
          Text(
            'to create unforgettable travel experiences',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14, // Reduced font size for mobile
            ),
          ),
          SizedBox(
            height: 10, // Adjust height for mobile
          ),
          SizedBox(
            height: 10, // Adjust height for mobile
          ),
          Container(
            margin: const EdgeInsets.symmetric(
                horizontal: 8), // Adjust margins for mobile
            child: Row(
              mainAxisAlignment:
                  MainAxisAlignment.center, // Center the text for mobile
              children: [
                Text(
                  bh_text_4,
                  style: TextStyle(
                    fontSize: 20, // Reduced font size for mobile
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 8, // Adjust height for mobile
          ),
          Container(
            margin: const EdgeInsets.symmetric(
                horizontal: 8), // Adjust margins for mobile
            height: h * 0.87, // Reduced height for mobile
            width: w,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              // Change Row to Column for vertical stacking
              children: [
                // ------- container image -------- //
                Container(
                  height: h / 2.5, // Reduced height for mobile
                  width: w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: AssetImage(C_image_4),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                SizedBox(
                  height: 8, // Adjust height for mobile
                ),

                // -------- container text container ---------- //
                SizedBox(
                  height: 265, // Reduced height for mobile
                  width: w,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        Para_text_4,
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 14),
                      ),
                      SizedBox(
                        height: 45,
                      ),

                      // --------- Image Row Container --------- //
                    ],
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                SizedBox(
                  height: 100,
                  width: w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        height: 100,
                        width: 120,
                        child: Image(
                          image: AssetImage(C4_sub_image_1),
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        height: 100,
                        width: 120,
                        child: Image(
                          image: AssetImage(C4_sub_image_2),
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        height: 100,
                        width: 120,
                        child: Image(
                          image: AssetImage(C4_sub_iamge_3),
                          fit: BoxFit.cover,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20, // Reduced for mobile
          ),
          Text(
            'Customize The package',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 22), // Reduced font size
          ),
          SizedBox(
            height: 10, // Reduced for mobile
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Arrange locations according to your schedule and preferences. Contact us on WhatsApp or give us a call.',
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14), // Reduced font size
            ),
          ),
          SizedBox(
            height: 30, // Reduced for mobile
          ),
          Container(
            height: h + 75, // Reduce height for mobile
            width: w,
            decoration: BoxDecoration(
              color: Colors.grey.shade600,
              image: DecorationImage(
                image: AssetImage('assets/homebgimage.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
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
    ),
  );
}
