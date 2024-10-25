// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:three/main.dart';
import 'package:three/pages/MobHomePage.dart';
import 'package:three/pages/about.dart';

import 'package:three/pages/destination.dart';

Widget NavButton(String text, BuildContext context) {
  final double w = MediaQuery.of(context).size.width;
  return Padding(
    padding: const EdgeInsets.only(left: 2.0),
    child: TextButton(
      onPressed: () {
        if (text == 'Home') {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      w > 600 ? HomeWidget() : MobileHomePage(context)));
        } else if (text == 'About') {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => AboutPage()));
        } else if (text == 'Destinations') {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => DestinationPage()));
        }
      },
      style: ButtonStyle(
        elevation: WidgetStatePropertyAll(20),
        shadowColor:
            WidgetStatePropertyAll(const Color.fromARGB(77, 219, 215, 215)),
        animationDuration: Duration(milliseconds: 300),

        overlayColor:
            WidgetStatePropertyAll(Color(0xFF08ad9b)), // overlaying color
        // Buttonbg color
      ),
      child: Text(
        text,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          decoration: TextDecoration.none,
          fontSize: 16,
          color: Color(0xFFAB2376),
        ),
      ),
    ),
  );
}
