// ignore: duplicate_ignore
// ignore: file_names, duplicate_ignore
// ignore: file_names, duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:three/pages/destination.dart';

import 'package:three/utils/text.dart';
import 'package:three/widgets/cards.dart';

// ignore: non_constant_identifier_names
Widget HomeTitle(BuildContext context) {
  return SizedBox(
    width: MediaQuery.of(context).size.width / 1.1,
    height: MediaQuery.of(context).size.height / 1.3,
    child: Row(
      children: [
        Expanded(
          child: SizedBox(
            width: MediaQuery.of(context).size.width / 3,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    HomeText.Comy_name,
                    style: TextStyle(
                        fontSize: 45,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontStyle: FontStyle.normal),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    HomeText.Compy_t,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                        color: Colors.black,
                        fontStyle: FontStyle.normal),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      style: ButtonStyle(
                          overlayColor: WidgetStatePropertyAll(
                              Color(0xFF04aaa2)), // overlaying color
                          backgroundColor: WidgetStatePropertyAll(
                              Color(0xFF01738e)), // Buttonbg color
                          shape: WidgetStateProperty.all(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)))),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DestinationPage()));
                      },
                      child: Text(
                        HomeText.explore,
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )),
                ],
              ),
            ),
          ),
        ),
        Expanded(
            child: SizedBox(
          height: 350,
          width: 50,
          child: Package_Cards(),
        )),
      ],
    ),
  );
}
