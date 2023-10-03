import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppBCScreen extends StatelessWidget {
  String text;

  AppBCScreen({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white24,
          leading: Container(
            height: 22,
            width: 40,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(right: 16),
            decoration: BoxDecoration(
                color: Color(0xff4C8613).withOpacity(.13),
                borderRadius: BorderRadius.circular(16)),
            child: SvgPicture.asset(
              "assets/images/arrow.svg",
              fit: BoxFit.scaleDown,
            ),
          ),
          title: Text(
            text,
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xff4C8613)),
          ),
          centerTitle: true,
        ),
      ),
    );
  }
}
