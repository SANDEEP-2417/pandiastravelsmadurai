// ignore_for_file: depend_on_referenced_packages

import 'package:url_launcher/url_launcher_string.dart';

class TFunctions {
  TFunctions._();

  
  static  void launchWhatsApp({required String phone, required String message}) async {
  String url = "https://wa.me/+91$phone?text=${Uri.encodeFull(message)}";
  if (await canLaunchUrlString(url)) {
    await launchUrlString(url);
  } else {
    throw 'Could not launch $url';
  }
}


 static void launchCaller(String phoneNumber) async {
  String url = "tel:+91$phoneNumber";
  if (await canLaunchUrlString(url)) {
    await launchUrlString(url);
  } else {
    throw 'Could not launch $url';
  }
}
}