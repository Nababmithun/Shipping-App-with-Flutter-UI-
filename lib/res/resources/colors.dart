import 'package:flutter/material.dart';

class AppTheme {
  static Color primaryColor = const Color(0xff224497);
  static Color lightPrimaryColor = const Color(0xffDCFFFB);
  static Color lightRedColor = const Color(0xffFFEFF0);
  static Color redColor = const Color(0xffE0454B);
  static Color backgroundColor = Colors.grey.shade300;
  static Color greyColor = const Color(0xff666666);
  static Color greySecondColor = const Color(0xffC0C0C0);
  static Color greyThirdColor = const Color(0xffE7E8EA);
  static Color greyFourthColor = const Color(0xffA0A1AB);
  static Color lightBlackColor = const Color(0xff666666);
  static Color darkBlackColor = const Color(0xff262626);
  static Color lightGreyColor = const Color(0xffF7F7F8);
  static Color lightLightGreyColor = const Color(0xffECECEC);
  static Color appBarColor = const Color(0xffE2ECFF);
  static const MaterialColor primarySwatchColor = MaterialColor(
    0xff224497,
    <int, Color>{
      50: Color(0xff224497),
      100: Color(0xff224497),
      200: Color(0xff224497),
      300: Color(0xff224497),
      400: Color(0xff224497),
      500: Color(0xff224497),
      600: Color(0xff224497),
      700: Color(0xff224497),
      800: Color(0xff224497),
      900: Color(0xff224497),
    },
  );
  static const Color primaryColorConst = Color(0xff00C7AE);
  static final ThemeData primaryTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: primaryColor,
    textTheme: const TextTheme(
        bodyText2: TextStyle(
      color: Colors.black,
    )),
    primarySwatch: primarySwatchColor,
    unselectedWidgetColor: const Color(0xff8592E5),
  );
}
