import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  static const Color error = Color(0xfff04343);
  static const Color tabBarBlack = Color(0xff070911);
  static const Color gray = Color(0xff838488);
  static const Color btnBackground = Color(0xff24273a);
  static const Color btnBackgroundHighlight = Color(0xff3a3d4e);
  static const Color grayLight = Color(0xff363a4b);
  static const Color grayDark = Color(0xff727890);
  static const Color dividerGray = Color(0xff424555);
  static const Color red = Color(0xffc94e54);
  static const Color lungBlue = Color(0xff5bc7c5);
  static const Color accessBlue = Color(0xff48a0b5);
  static const Color placeholderGray = Color(0xff7c7e89);
  static const Color caloriePlaceholderGray = Color(0xff375073);
  static const Color searchResult = Color(0xff34384b);
  static const Color calorieBar = Color(0xff2f3345);
  static const Color articleStepperSelectedColor = Color(0xff555866);
  static const Color articleBackColor = Color(0xff707070);
  static const Color white = Color(0xffffffff);
  static const Color white_7 = Color(0x11ffffff);
  static const Color rating = Color(0xfffff186);
  static const Color ratingGradientEnd = Color(0xfffead29);

  static const LinearGradient ratingGradient = LinearGradient(
    colors: [
      rating,
      ratingGradientEnd,
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  // BRAND SOLIDS
  static const Color darkBlue = Color(0xff13172b);
  static const Color lightBlue = Color(0xff00cac6);
  static const Color midBlue = Color(0xff00a3b8);
  static const Color primary = lightBlue;

  static const Color bottomNavigationBar = Color(0xff0e1121);

  // BRAND GRADIENTS
  static const Gradient brandGradient = LinearGradient(
    colors: [
      Color(0xff007caa),
      Color(0xff00cac6),
    ],
  );
  static const Gradient brandGradientReverse = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Color(0xff00cac6),
      Color(0xff007caa),
    ],
  );
  static const Gradient brandGradientLight = LinearGradient(
    colors: [
      Color(0xff00cac6),
      Color(0xff44f5f1),
    ],
  );

  // Sleep
  static const Color sleep = Color(0xff2c428a);
  static const Gradient sleepGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0xff210c50),
      Color(0xff3678c4),
    ],
  );
  static const Gradient sleepGradientReverse = LinearGradient(
    begin: Alignment.bottomCenter,
    end: Alignment.topCenter,
    colors: [
      Color(0xff210c50),
      Color(0xff3678c4),
    ],
  );
}
