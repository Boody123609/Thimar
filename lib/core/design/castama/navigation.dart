

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
final navigetorKey= GlobalKey<NavigatorState>();


void navigateTo(Widget page){
  Navigator.push(navigetorKey.currentContext!, MaterialPageRoute(builder: (context) => page));
}