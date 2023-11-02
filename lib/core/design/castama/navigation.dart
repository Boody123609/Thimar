import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final navigetorKey = GlobalKey<NavigatorState>();

void navigateTo(Widget page,{bool isBack = true} ) {
  isBack
      ? Navigator.push(navigetorKey.currentContext!,
          MaterialPageRoute(builder: (context) => page))
      : Navigator.pushAndRemoveUntil(
          navigetorKey.currentContext!,
          MaterialPageRoute(builder: (context) => page),
          (route) => false,
        );
}
