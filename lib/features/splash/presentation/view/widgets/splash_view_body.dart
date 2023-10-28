import 'package:bookly/core/constants/app_assets.dart';
import 'package:flutter/cupertino.dart';

class SplashViewbody extends StatefulWidget {
  const SplashViewbody({super.key});

  @override
  State<SplashViewbody> createState() => _SplashViewbodyState();
}

class _SplashViewbodyState extends State<SplashViewbody> with SingleTickerProviderStateMixin{
  late AnimationController animationController;  //من 0 ل 1 فقط
  late Animation<Offset> slidingAnimation;  //بيدي القيم الي محتجها
  @override
  void initState() {
    super.initState();
    animationController=AnimationController(
        vsync: this,         //vsync  <SingleTickerProviderStateMixin>
        duration: const Duration(seconds: 2));

    slidingAnimation=Tween<Offset>(begin: const Offset(0,1 ),end:Offset.zero).animate(animationController);
    animationController.forward(); //start animation

  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(child: Image.asset(AppAssets.logo)),
        SizedBox(height: 10,),
        AnimatedBuilder(   //rebuild this widget only i dont need to use setStat
          animation: slidingAnimation,
          builder: (context, child) =>
            SlideTransition(
              position: slidingAnimation,
              child: Text('Read Books For Free')),
        )
      ],
    );
  }
}
