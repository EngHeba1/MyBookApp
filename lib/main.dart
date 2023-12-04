import 'package:bookly/core/constants/app_colors.dart';
import 'package:bookly/core/uitls/api_service.dart';
import 'package:bookly/core/uitls/service_locator.dart';
import 'package:bookly/features/home/data/models/repo/home_repo_implement.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

//import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'core/uitls/app_router.dart';
import 'features/home/presentation/manger/fetured_books_cubit/fetured_books_cubit.dart';
import 'features/home/presentation/manger/newst_books_cubit/newst_books_cubit.dart';
import 'features/splash/presentation/view/splash_view.dart';

void main() {
  setUp();
  runApp(Bookly());
}

class Bookly extends StatelessWidget {
  // const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
        BlocProvider(create: (context)
    =>
        FeturedBooksCubit(getIt.get<HomeRepoImplement>())..fetchFeturedBooks()
    ,),
         BlocProvider(create: (context) =>
      NewstBooksCubit(getIt.get<HomeRepoImplement>())),
                   ],
    child: ScreenUtilInit(
    designSize: const Size(360, 690),
    minTextAdapt: true,
    splitScreenMode: true,
    // Use builder only if you need to use library outside ScreenUtilInit context
    builder: (_, child) {
    return MaterialApp.router(
    routerConfig: AppRouter.router,
    debugShowCheckedModeBanner: false,
    theme: ThemeData.dark()
        .copyWith(scaffoldBackgroundColor: AppColor.primaryColor),

    // home: Splash()
    );
    })
    ,
    );
  }
}
