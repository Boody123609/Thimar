import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyAccountPage extends StatefulWidget {
  const MyAccountPage({Key? key}) : super(key: key);

  @override
  State<MyAccountPage> createState() => _MyAccountPageState();
}

class _MyAccountPageState extends State<MyAccountPage> {
  List images = [
    "assets/images/user.png",
    "assets/images/wallet.png",
    "assets/images/location.png",
    "assets/images/doler.png",
    "assets/images/question.png",
    "assets/images/check.png",
    "assets/images/call.png",
    "assets/images/edite.png",
    "assets/images/share.png",
    "assets/images/info.png",
    "assets/images/langage.png",
    "assets/images/note.png",
    "assets/images/star.png",
  ];
  List titles = [
    "البيانات الشخصية",
    "المحفظة",
    "العناوين",
    "الدفع",
    "أسئلة متكررة",
    "سياسة الخصوصية",
    "تواصل معنا",
    "الشكاوي والأقتراحات",
    "مشاركة التطبيق",
    "عن التطبيق",
    "تغيير اللغة",
    "الشروط والأحكام",
    "تقييم التطبيق",
  ];
  List pages = [
    //  here pages which navegetion
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              width: double.infinity,
              height: 225.w,
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(40),
                    bottomLeft: Radius.circular(40),
                  )),
              child: Column(
                children: [
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    "حسابي",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 23.h,
                  ),
                  Image.asset(
                    "assets/images/logo.png",
                    width: 75.w,
                    height: 70.h,
                  ),
                  Text(
                    "محمد علي",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Text(
                    "96654787856+",
                    style: TextStyle(fontSize: 14, color: Color(0xffA2D273)),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            ...List.generate(
              titles.length,
              (index) => Container(
                margin: EdgeInsets.only(bottom: 30),
                padding: EdgeInsets.symmetric(horizontal: 20),
                width: double.infinity,
                height: 25.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          images[index],
                          width: 20.w,
                          height: 20.h,
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Text(
                          titles[index],
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Theme.of(context).primaryColor),
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Image.asset(
                        "assets/images/arrowleft.png",
                        width: 20.w,
                        height: 20.h,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "تسجيل الخروج",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).primaryColor),
                  ),
                  Image.asset(
                    "assets/images/turn off.png",
                    width: 18.w,
                    height: 18.h,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
