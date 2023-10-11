import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thimar_application/core/design/castama/navigation.dart';
import 'package:thimar_application/screens/auth/login_in/view.dart';
import 'package:thimar_application/screens/home/navbar.dart';
import 'package:thimar_application/screens/home/pages/fav/view.dart';
import 'package:thimar_application/screens/home/pages/home/view.dart';
import 'package:thimar_application/screens/main_screen/address/view.dart';
import 'package:thimar_application/screens/main_screen/product_details/view.dart';
import 'package:thimar_application/screens/splash/view.dart';

import 'core/design/castama/app_bar_custam.dart';
import 'core/design/castama/btn.dart';
import 'core/design/castama/input.dart';
import 'core/design/res/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
      builder: (context,x) {
        return MaterialApp(
          navigatorKey: navigetorKey,
          builder: (context, child) => Directionality(textDirection:TextDirection.rtl, child: child!),

          debugShowCheckedModeBanner: false,

          theme: ThemeData(
            scaffoldBackgroundColor: Colors.white,
            androidOverscrollIndicator: AndroidOverscrollIndicator.stretch,
            primarySwatch: getMaterialColor(0xff4C8613),
              hintColor:Color(0xff808080)

          ),
          home: SplashScreen(),
        );
      }
    );
  }
}


