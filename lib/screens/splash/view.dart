import 'dart:async';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import '../auth/login_in/view.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    
    super.initState();
    Timer(Duration(seconds: 5),(){
      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>LoginPage()), (route) => false);

    });
  }
  @override
  Widget build(BuildContext context) {

        return Scaffold(

          body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/images/splash1.png",),fit: BoxFit.fill)
            ),
            child:Center(child: FadeInDown(
              duration: Duration(seconds: 3),
                child: Image.asset("assets/images/splash2.png",))) ,
          ),


        );

  }
}

