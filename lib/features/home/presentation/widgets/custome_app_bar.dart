import 'package:flutter/material.dart';

import '../../../../core/constants/app_assets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 40),
      child: Row(
   children: [
  Image.asset(AppAssets.logo,width: 75,height: 30),
   const Spacer(),
   IconButton(onPressed: () {}, icon:const Icon(FontAwesomeIcons.magnifyingGlass,size: 18,) )
],
      ),
    );
  }
}