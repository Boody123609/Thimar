import 'package:flutter/material.dart';

import '../../../core/design/castama/btn.dart';
import '../../../core/design/castama/input.dart';

class ForgetPasswordPage extends StatefulWidget {
  const ForgetPasswordPage({Key? key}) : super(key: key);

  @override
  State<ForgetPasswordPage> createState() => _ForgetPasswordPageState();
}

class _ForgetPasswordPageState extends State<ForgetPasswordPage> {

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
            "أدخل رقم الجوال المرتبط بحسابك",
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          SizedBox(
            height: 28,
          ),
          Input(
            text: "رقم الجوال",
            imagepath: "assets/images/Phone.svg",
            isPhone: true,
          ),
          SizedBox(
            height: 24,
          ),
          BTN(text: "تأكيد رقم الجوال", onPrees: () {}),
          SizedBox(
            height: 45,
          ),
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
                ),
              ),

            ],
          ),
        ],
      ),
    );
  }
}
