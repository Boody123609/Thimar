import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/design/castama/btn.dart';
import '../../../core/design/castama/input.dart';

class Change_PasswordPage extends StatelessWidget {
  const Change_PasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: ListView(
  padding: EdgeInsets.all(16),
  children: [
    Padding(
      padding: const EdgeInsets.only(
          bottom: 21, left: 136, right: 109, top: 20),
      child: Image.asset(
        "assets/images/logo.png",
        width: 129,
        height: 125,
      ),
    ),
    Text(
      "نسيت كلمة المرور",
      style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Theme.of(context).primaryColor),
    ),
    SizedBox(
      height: 10,
    ),
    Text(
      "أدخل كلمة المرور الجديدة",
      style: TextStyle(
        fontSize: 16,
      ),
    ),
    SizedBox(
      height: 28.h,
    ),
    Input(
      text: "كلمة المرور",
      imagepath: "assets/images/lock.svg",
    ),
    SizedBox(
      height: 16.h,
    ),
    Input(
      text: "كلمة المرور",
      imagepath: "assets/images/lock.svg",
    ),
    SizedBox(height: 25.h,),

    BTN(text: "تغيير كلمة المرور", onPrees: () {}),
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "ليس لديك حساب ؟",
          style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).primaryColor),
        ),
        TextButton(
            onPressed: () {},
            child: Text(
              "تسجيل الدخول",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ))
      ],
    )
  ],
),
    );
  }
}
