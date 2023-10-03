import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/design/castama/btn.dart';
import '../../../core/design/castama/input.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          padding: EdgeInsets.all(16),
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  bottom: 21, left: 136, right: 109, top: 20),
              child: Image.asset(
                "assets/images/logo.png",
                width: 129.w,
                height: 125.h,
              ),
            ),
            Text(
              "مرحبا بك مرة أخرى",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).primaryColor),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              "يمكنك تسجيل الدخول الأن",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 28.h,
            ),
            Input(
              text: "رقم الجوال",
              imagepath: "assets/images/Phone.svg",
              isPhone: true,


            ),
            SizedBox(
              height: 16.h,
            ),
            Input(

              text: "كلمة المرور",
              imagepath: "assets/images/lock.svg",
              isPhone: false,
            ),
            Align(
              alignment: AlignmentDirectional.centerEnd,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "نسيت كلمة المرور ؟",
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    )),
              ),
            ),
            BTN(text: "تسجيل الدخول", onPrees: () {}),
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
                      "تسجيل الأن",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
