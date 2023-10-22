import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/design/castama/btn.dart';
import '../../../../core/design/castama/input.dart';

class PersonalDetailsPage extends StatelessWidget {
  const PersonalDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(right: 16.0, top: 5, bottom: 5),
          child: Container(
            child: SvgPicture.asset(
              "assets/images/arrow.svg",
              height: 6.h,
              width: 12.w,
              fit: BoxFit.scaleDown,
            ),
            width: 30.w,
            height: 30.h,
            decoration: BoxDecoration(
                color: Color(0xff4C8613).withOpacity(.13),
                borderRadius: BorderRadius.circular(16)),
          ),
        ),
        title: Text(
          "البيانات الشخصية",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).primaryColor),
        ),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Center(
                  child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  "https://avatars.mds.yandex.net/i?id=9636c9c7d878024d863e7b72479082df46750847-8312878-images-thumbs&n=13",
                  width: 85.w,
                  height: 85.h,
                  fit: BoxFit.fill,
                ),
              )),
              Center(
                  child: Image.asset(
                "assets/images/camera.png",
                width: 20.w,
                height: 20.h,
              )),
            ],
          ),
          Center(
            child: Text(
              "محمد علي",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                  color: Theme.of(context).primaryColor),
            ),
          ),
          Center(
            child: Text(
              "96654787856+",
              style: TextStyle(fontSize: 17, color: Color(0xffA7A7A7)),
            ),
          ),
          SizedBox(height: 20.h),
          Input(
            text: 'اسم المستخدم',
            imagepath: 'assets/images/user.png',
            isSvg: false,
          ),
          SizedBox(
            height: 16,
          ),
          Input(
            text: "رقم الجوال",
            imagepath: "assets/images/call.png",
            isSvg: false,
            isPhone: true,
          ),
          SizedBox(
            height: 16,
          ),
          Input(
            text: "المدينة",
            imagepath: "assets/images/Report.svg",
          ),
          SizedBox(
            height: 16.h,
          ),
          Input(
              text: "كلمة المرور",
              imagepath: "assets/images/lock.svg",
              imagepathSuffix: "assets/images/arrowleft.png"),
          SizedBox(
            height: 40.h,
          ),
          BTN(
            text: 'تعديل البيانات',
            onPrees: () {},
          )
        ],
      ),
    );
  }
}
