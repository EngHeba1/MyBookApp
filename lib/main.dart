import 'package:bookly/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'features/splash/presentation/view/splash_view.dart';

void main() {
  runApp( Bookly());
}

class Bookly extends StatelessWidget {
 // const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
    theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: AppColor.primaryColor),
      home: Splash()
    );
  }
}


