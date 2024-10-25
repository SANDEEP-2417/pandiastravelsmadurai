import 'package:flutter/material.dart';
import 'package:three/utils/image.dart';
import 'package:three/utils/text.dart';

class Package_Cards extends StatefulWidget {
  const Package_Cards({super.key});

  @override
  State<Package_Cards> createState() => _Package_CardsState();
}

class _Package_CardsState extends State<Package_Cards> {
  @override
  Widget build(BuildContext context) {
    final double w = MediaQuery.of(context).size.width;

    final List<String> ImagePath = [
      HomeImage.Md_image,
      HomeImage.KK_image,
      HomeImage.Ram_image,
      HomeImage.Tiru_img,
      HomeImage.Ooty_img,
      HomeImage.Kodai_image,
    ];

    final List<String> cardname = [
      HomeText.mdu_name,
      HomeText.KK_name,
      HomeText.Ram_name,
      HomeText.tiru_name,
      HomeText.OOty_name,
      HomeText.kodai_name,
    ];

    final List<String> placecontent = [
      HomeText.Madu_text,
      HomeText.Kan_text,
      HomeText.Ram_text,
      HomeText.Tiru_text,
      HomeText.OOty_text,
      HomeText.Kodai_text,
    ];

    final PageController pagecontroller = PageController();

    void scrollnext() {
      pagecontroller.nextPage(
          duration: Duration(milliseconds: 300), curve: Curves.bounceIn);
    }

    void scrollpervious() {
      pagecontroller.previousPage(
          duration: Duration(milliseconds: 300), curve: Curves.bounceIn);
    }

    return Card(
      elevation: 10,
      shadowColor: Colors.grey,
      color: Color(0xFFF5F5F5),
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Stack(children: [
          SizedBox(
            child: PageView.builder(
                controller: pagecontroller,
                itemCount: ImagePath.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    width: 200,
                    height: 270,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage(ImagePath[index]),
                          fit: BoxFit.cover,
                          opacity: 20.0,
                        )),
                    child: Stack(
                      children: [
                        Positioned(
                          left: 5,
                          bottom: 2,
                          right: 5,
                          child: Container(
                            width: w * 0.60,
                            height: 95,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                gradient: LinearGradient(
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomLeft,
                                  colors: [
                                    Color(0xFF09ac9a), // Green
                                    Color(0xFF006400), // Dark Green
                                    Color(0xFF23376a), // ink blue
                                  ],
                                )),
                            child: Column(
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      child: Text(
                                        cardname[index],
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  margin: w < 600
                                      ? EdgeInsets.only(left: 40)
                                      : EdgeInsets.only(left: 60),
                                  width: w * 0.70,
                                  child: Text(
                                    textAlign: TextAlign.center,
                                    placecontent[index],
                                    style: TextStyle(
                                        fontSize: w < 700 ? 12 : 14,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                      ],
                    ),
                  );
                }),
          ),
          Positioned(
            bottom: 50,
            left: 8.5,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(shape: CircleBorder()),
                onPressed: () {
                  scrollpervious();
                },
                child: Icon(
                  Icons.arrow_back_ios_outlined,
                  size: 18,
                  color: Colors.amber,
                )),
          ),
          SizedBox(
            height: 3,
          ),
          Positioned(
            bottom: 10,
            left: 2,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: CircleBorder(), overlayColor: Color(0xFF03045E)),
                onPressed: () {
                  scrollnext();
                },
                child: Icon(
                  Icons.chevron_right_outlined,
                  size: 30,
                  color: Colors.amber,
                )),
          )
        ]),
      ),
    );
  }
}
