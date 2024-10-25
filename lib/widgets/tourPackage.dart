// ignore_for_file: file_names, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:three/pages/maduraiPage.dart';
import 'package:three/utils/image.dart';
import 'package:three/utils/listIteam.dart';
import 'package:three/utils/text.dart';

// ignore: camel_case_types
class TourPack_MD extends StatefulWidget {
  final String TDesText;
  final double HSize;
  final double WSize;
  final String Timage;
  final String THeadText;
  final double Font;
  final List Titeam;

  const TourPack_MD({
    super.key,
    required this.TDesText,
    required this.HSize,
    required this.WSize,
    required this.Timage,
    required this.THeadText,
    required this.Font,
    required this.Titeam,
  });

  @override
  _TourPack_MDState createState() => _TourPack_MDState();
}

// ignore: camel_case_types
class _TourPack_MDState extends State<TourPack_MD>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  bool isFront = true;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 600),
      vsync: this,
    );
    _animation = Tween<double>(begin: 0, end: 1).animate(_controller);
  }

  void _flipCard() {
    if (isFront) {
      _controller.forward();
    } else {
      _controller.reverse();
    }
    isFront = !isFront;
  }

  @override
  Widget build(BuildContext context) {
    return MD_pack(
      context,
      widget.HSize,
      widget.WSize,
      widget.Timage,
      widget.THeadText,
      widget.TDesText,
      widget.Font,
      widget.Titeam,
      _flipCard,
      _animation,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

Widget MD_pack(
    BuildContext context,
    double hsize,
    double wsize,
    String image,
    String Headtext,
    String DesText,
    double Font,
    List iteamList,
    Function() Flip,
    Animation<double> animation) {
  return MouseRegion(
    onEnter: (_) => Flip(),
    onExit: (_) => Flip(),
    child: AnimatedBuilder(
        animation: animation,
        builder: (context, child) {
          return Transform(
            transform: Matrix4.rotationY(animation.value * 3.14159),
            alignment: Alignment.center,
            child: animation.value < 0.5
                ? Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Container(
                      height: hsize,
                      width: wsize,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 3, 6, 64),
                            spreadRadius: 3,
                            blurRadius: 25,
                          ),
                        ],
                        border: Border.all(
                          color: Color.fromARGB(255, 1, 9, 94),
                        ),
                        image: DecorationImage(
                          image: AssetImage(image),
                          fit: BoxFit.cover,
                        ),
                        color: Colors.grey.shade600,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: hsize / 2.4,
                            width: wsize,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: <Color>[
                                  Color.fromARGB(255, 1, 9, 94),
                                  Color(0xFFAB2376),
                                ],
                              ),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  Headtext,
                                  style: TextStyle(
                                    fontSize: Font * 1.5,
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.none,
                                    color: Colors.white,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 14),
                                  child: Text(
                                    DesText,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      decoration: TextDecoration.none,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                : Transform(
                    transform: Matrix4.rotationY(3.14159),
                    alignment: Alignment.center,
                    child: Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Container(
                        height: 475,
                        width: 334,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(255, 3, 6, 64),
                              spreadRadius: 1,
                              blurRadius: 10,
                            ),
                          ],
                          color: Color.fromARGB(255, 1, 9, 94),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 395,
                              width: 334,
                              child: ListView.builder(
                                scrollDirection: Axis.vertical,
                                itemCount: iteamList.length,
                                itemBuilder: (context, index) {
                                  return Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      SizedBox(
                                        height: 60,
                                        width: 334,
                                        child: Card(
                                          color: Colors.white,
                                          elevation: 5,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Center(
                                                child: Text(
                                                  iteamList[index],
                                                  style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.bold,
                                                    decoration:
                                                        TextDecoration.none,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  );
                                },
                              ),
                            ),
                            SizedBox(height: 3),
                            Center(
                              child: TextButton(
                                style: ButtonStyle(
                                  shape: WidgetStateProperty.all(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10))),
                                  backgroundColor: WidgetStatePropertyAll(
                                    Color(0xFFAB2376),
                                  ),
                                  animationDuration:
                                      Duration(milliseconds: 300),
                                  overlayColor: WidgetStateProperty.all(
                                      Color(0xFF08ad9b)),
                                ),
                                onPressed: () {
                                  if (iteamList == TiteamList.MD_Pack_place) {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => TourPlace(
                                                context,
                                                HomeImage.MD_about_banner,
                                                HomeImage.Gandhi_image_banner,
                                                HomeImage.Meenakshi_image_3,
                                                HomeImage.Vishnu_image_banner,
                                                HomeImage
                                                    .MahagaRaja_place_banner,
                                                'Gandhi Museum',
                                                'Meenakshi Amman Temple',
                                                'Vishnu Temple',
                                                'Thirumalai Nayakkar Palace',
                                                HomeText.mdu_name,
                                                HomeText.Gandhi_text,
                                                HomeText.Md_Meenakshi_text,
                                                HomeText.Vishnu_temple,
                                                HomeText.MahagaRaja_place,
                                                HomeImage.Gandhi_image_1,
                                                HomeImage.Gandhi_image_2,
                                                HomeImage.Gandhi_image_3,
                                                HomeImage.Meenakshi_image_1,
                                                HomeImage.Meenakshi_image_2,
                                                HomeImage.Meenakshi_image_3,
                                                HomeImage.Vishnu_image_1,
                                                HomeImage.vishnu_image_2,
                                                HomeImage.Vishnu_image_3,
                                                HomeImage
                                                    .MahagaRaja_place_image_1,
                                                HomeImage
                                                    .MahagaRaja_place_image_2,
                                                HomeImage
                                                    .MahagaRaja_place_image_3,
                                                18)));
                                  } else if (iteamList ==
                                      TiteamList.KK_Pack_place) {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => TourPlace(
                                                context,
                                                HomeImage.KK_image,
                                                HomeImage
                                                    .KK_Thiruvaluvar_banner,
                                                HomeImage.KK_DEVI_TEMPLE_banner,
                                                HomeImage.KK_Tiruvni_banner,
                                                HomeImage.Vivk_Banner,
                                                HomeText
                                                    .Kk_Thiruvalluvar_Statue,
                                                HomeText
                                                    .Kk_Kanyakumari_devi_temple,
                                                HomeText.Kk_Thiruvinsangamam,
                                                HomeText
                                                    .Kk_Vivekananda_Swami_Memorial,
                                                HomeText.KK_name,
                                                HomeText.Thiruvaluvar_text,
                                                HomeText.Devi_Temple_Text,
                                                HomeText.Tiruvani_text,
                                                HomeText.vivk_Para_text,
                                                HomeImage
                                                    .KK_Thiruvaluvar_image_1,
                                                HomeImage
                                                    .KK_Thiruvaluvar_image_2,
                                                HomeImage
                                                    .KK_Thiruvaluvar_image_3,
                                                HomeImage
                                                    .KK_devi_temple_image_1,
                                                HomeImage
                                                    .KK_devi_temple_image_2,
                                                HomeImage
                                                    .KK_devi_temple_image_3,
                                                HomeImage.KK_Tiruvni_image_1,
                                                HomeImage.KK_Tiruvni_image_2,
                                                HomeImage.KK_Tiruvni_image_3,
                                                HomeImage.Vivk_image_1,
                                                HomeImage.Vivk_image_3,
                                                HomeImage.Vivk_image_2,
                                                18)));
                                  } else if (iteamList ==
                                      TiteamList.Ram_Pack_place) {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => TourPlace(
                                                context,
                                                HomeImage.Ram_image,
                                                HomeImage.ram_APJ_Banner,
                                                HomeImage.ram_dhanskodi_image_1,
                                                HomeImage
                                                    .ram_ramar_palam_banner,
                                                HomeImage.ram_sitha_banner,
                                                HomeText
                                                    .Ram_Abdul_Kalam_Memorial,
                                                HomeText.Ram_Dhanushkodi,
                                                HomeText.Ram_Ramar_Bridge,
                                                HomeText.Ram_Sita_Theertham,
                                                HomeText.Ram_name,
                                                HomeText.APJ_para_text,
                                                HomeText.Dhanushkodi_para_text,
                                                HomeText.Ramarpalam_para_text,
                                                HomeText
                                                    .shitha_theertham_para_text,
                                                HomeImage.ram_APJ_image_1,
                                                HomeImage.ram_APJ_image_2,
                                                HomeImage.ram_APJ_image_3,
                                                HomeImage.ram_dhanskodi_image_1,
                                                HomeImage
                                                    .ram_dhanshkodi_image_2,
                                                HomeImage
                                                    .ram_dhanshkodi_image_3,
                                                HomeImage
                                                    .ram_ramar_palam_image_1,
                                                HomeImage
                                                    .ram_ramar_palam_image_3,
                                                HomeImage
                                                    .ram_ramar_palam_image_2,
                                                HomeImage.ram_sitha_image_1,
                                                HomeImage.ram_sitha_image_2,
                                                HomeImage.ram_sitha_image_3,
                                                18)));
                                  }
                                  else if (iteamList ==
                                      TiteamList.Tiru_Pack_place) {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => TourPlace(
                                                context,
                                                HomeImage.Tir_tour_img,
                                                HomeImage.ram_APJ_Banner,
                                                HomeImage.ram_dhanskodi_image_1,
                                                HomeImage
                                                    .ram_ramar_palam_banner,
                                                HomeImage.ram_sitha_banner,
                                                HomeText
                                                    .Ram_Abdul_Kalam_Memorial,
                                                HomeText.Ram_Dhanushkodi,
                                                HomeText.Ram_Ramar_Bridge,
                                                HomeText.Ram_Sita_Theertham,
                                                HomeText.Ram_name,
                                                HomeText.APJ_para_text,
                                                HomeText.Dhanushkodi_para_text,
                                                HomeText.Ramarpalam_para_text,
                                                HomeText
                                                    .shitha_theertham_para_text,
                                                HomeImage.ram_APJ_image_1,
                                                HomeImage.ram_APJ_image_2,
                                                HomeImage.ram_APJ_image_3,
                                                HomeImage.ram_dhanskodi_image_1,
                                                HomeImage
                                                    .ram_dhanshkodi_image_2,
                                                HomeImage
                                                    .ram_dhanshkodi_image_3,
                                                HomeImage
                                                    .ram_ramar_palam_image_1,
                                                HomeImage
                                                    .ram_ramar_palam_image_3,
                                                HomeImage
                                                    .ram_ramar_palam_image_2,
                                                HomeImage.ram_sitha_image_1,
                                                HomeImage.ram_sitha_image_2,
                                                HomeImage.ram_sitha_image_3,
                                                18)));
                                  }
                                  else if (iteamList ==
                                      TiteamList.Kodai_Pack_place) {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => TourPlace(
                                                context,
                                                HomeImage.Ram_image,
                                                HomeImage.ram_APJ_Banner,
                                                HomeImage.ram_dhanskodi_image_1,
                                                HomeImage
                                                    .ram_ramar_palam_banner,
                                                HomeImage.ram_sitha_banner,
                                                HomeText
                                                    .Ram_Abdul_Kalam_Memorial,
                                                HomeText.Ram_Dhanushkodi,
                                                HomeText.Ram_Ramar_Bridge,
                                                HomeText.Ram_Sita_Theertham,
                                                HomeText.Ram_name,
                                                HomeText.APJ_para_text,
                                                HomeText.Dhanushkodi_para_text,
                                                HomeText.Ramarpalam_para_text,
                                                HomeText
                                                    .shitha_theertham_para_text,
                                                HomeImage.ram_APJ_image_1,
                                                HomeImage.ram_APJ_image_2,
                                                HomeImage.ram_APJ_image_3,
                                                HomeImage.ram_dhanskodi_image_1,
                                                HomeImage
                                                    .ram_dhanshkodi_image_2,
                                                HomeImage
                                                    .ram_dhanshkodi_image_3,
                                                HomeImage
                                                    .ram_ramar_palam_image_1,
                                                HomeImage
                                                    .ram_ramar_palam_image_3,
                                                HomeImage
                                                    .ram_ramar_palam_image_2,
                                                HomeImage.ram_sitha_image_1,
                                                HomeImage.ram_sitha_image_2,
                                                HomeImage.ram_sitha_image_3,
                                                18)));
                                  }
                                },
                                child: Text(
                                  'View More',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
          );
        }),
  );
}
