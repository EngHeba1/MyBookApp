import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/app_colors.dart';

class MyTheme{
  static ThemeData lightTheme=ThemeData(

  );
  static ThemeData darkTheme=ThemeData(
  // textTheme: GoogleFonts.montserratTextTheme(),
      scaffoldBackgroundColor: AppColor.primaryColor
  );
}