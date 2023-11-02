import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/design/castama/btn.dart';
import '../../../core/design/castama/input.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

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
              height: 125.h,
              width: 129.w,
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
          Input(text: "اسم المستخدم", imagepath: "assets/images/person.svg"),
          SizedBox(
            height: 16.h,
          ),
          Input(
            text: "رقم الجوال",
            imagepath: "assets/images/Phone.svg",
            isPhone: true,
          ),
          SizedBox(
            height: 16.h,
          ),
          Input(text: "المدينة", imagepath: "assets/images/Report.svg"),
          SizedBox(
            height: 16.h,
          ),
          Input(text: "كلمة المرور", imagepath: "assets/images/lock.svg"),
          SizedBox(
            height: 16.h,
          ),
          Input(text: "تأكيد كلمة المرور", imagepath: "assets/images/lock.svg"),
          SizedBox(
            height: 19.h,
          ),
          BTN(text: "تسجيل", onPrees: () {}),
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
          ),
        ],
      ),
    );
  }
}
