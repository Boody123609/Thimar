import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../core/design/castama/btn.dart';
class VerifyScreen extends StatefulWidget {
  const VerifyScreen({Key? key}) : super(key: key);

  @override
  State<VerifyScreen> createState() => _VerifyScreenState();
}

class _VerifyScreenState extends State<VerifyScreen> {
  @override
  Widget build(BuildContext context) {
        return Scaffold(
          body: ListView(
            padding: const EdgeInsets.all(16),
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
                "تفعيل الحساب",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).primaryColor),
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  Text(
                    "أدخل الكود المكون من 4 أرقام المرسل علي رقم الجوال 9660548745+ ",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              PinCodeTextField(
                appContext: (context),
                keyboardType: TextInputType.number,
                animationType: AnimationType.fade,
                cursorColor: Theme.of(context).primaryColor,
                animationDuration: Duration(milliseconds: 300),
                length: 4,
                enableActiveFill: false,
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(15),
                  fieldHeight: 60,
                  fieldWidth: 70,
                  activeColor: Theme.of(context).primaryColor,
                  inactiveColor: Color(0xffF3F3F3),
                  selectedColor: Theme.of(context).primaryColor,
                  // selectedFillColor: Colors.red,
                ),
              ),
              SizedBox(
                height: 37,
              ),
              BTN(text: "تأكيد الكود", onPrees: () {}),
              SizedBox(
                height: 27,
              ),
              Align(
                alignment: AlignmentDirectional.center,
                child: Text(
                  "لم تستلم الكود ؟",
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Align(
                alignment: AlignmentDirectional.center,
                child: Text(
                  "يمكنك إعادة إرسال الكود بعد",
                  style: TextStyle(fontSize: 16),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              CircularCountDownTimer(
                isReverse: true,
                width: 66,
                height: 69,
                duration: 7,
                fillColor: Theme.of(context).primaryColor,
                ringColor: Colors.white,
                backgroundColor: Colors.white,
                strokeWidth: 3,
                strokeCap: StrokeCap.round,
                onComplete: () {
                  bool isRunning = false;
                  setState(() {});
                },
              ),
              SizedBox(height: 19,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 121),
                child: OutlinedButton(

                    onPressed: (){}, child: Text("إعادة الإرسال",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)),
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
