import 'package:flutter/material.dart';

Color primary = const    Color(0xffFFFFFF);

class Styles {
  static Color primaryColor = primary;
  static Color textColor1 = Color(0xff0F2F44).withOpacity(.56);
  static Color txtColor2 = Color(0xff0F2F44);

  static Color bgColor1 = Color(0xff0F2F44);
  static Color bgColor2 = Color(0xffEAF1FF);
  static TextStyle textStyle =
      TextStyle(fontSize: 13, color: textColor1,);
  static TextStyle headLineStyle1 = TextStyle(fontSize: 16, color: txtColor2, );
  static TextStyle headLineStyle2 =
      TextStyle(fontSize: 24, color: txtColor2, fontWeight: FontWeight.bold);
  static TextStyle headLineStyle3 = TextStyle(
      fontSize: 10, color: txtColor2, fontWeight: FontWeight.normal);
  static TextStyle headLineStyle4 = TextStyle(
      fontSize: 9, color: txtColor2, );


}
