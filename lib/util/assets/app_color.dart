import 'package:flutter/material.dart';

class AppColor {
  static const Color buttonColor = Color(0xFF22117F);
  static const Color buttonOutline = Color(0xFF6D7195);
  static const Color black = Color(0xff231F20);
  static const Color white = Colors.white;
  static const Color transparent = Colors.transparent;
  static const Color darkGray = Color(0xff979797);
  static const Color mediumGray = Color(0xffCBD3D5);
  static const Color lightGray = Color(0xffE2E2E0);
  static const Color lightGray1 = Color(0xffCCCCCC);
  static const Color blue = Color(0xFF194781);
  static const Color darkBlue = Color(0xff113562);
  static const Color highDarkBlue = Color(0xff1d2936);
  static const Color violet = Color(0xff22117F);
  static const Color lightViolet = Color(0xff4D427C);
  static const Color lightBlue = Color(0xffCEDDFE);
  static const Color yellow = Color(0xffFFE200);
  static const Color darkYellow = Color(0xffE29C00);
  static const Color green = Color(0xff49A15A);

  static const Color red = Color(0xffF23B14);
  static const Color mainGreen = Color(0xff20C3AF);
  static const Color textBlack = Color(0xff525464);
  static const Color textLightBlack = Color(0xff838391);
  static const Color offWhite = Color(0xffF7F7F7);
  static const Color pinkLight = Color(0xffFFB19D);
  static const Color active = Color(0xff22A45D);

  static const Gradient backgroundGradient = LinearGradient(
    stops: [0, 0.9, 1],
    colors: [
      darkBlue,
      highDarkBlue,
      black,
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
}
