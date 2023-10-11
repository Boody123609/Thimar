import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class AddressScreen extends StatelessWidget {
  const AddressScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
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
                color: Color(0xff4C8613).withOpacity(.23),
                borderRadius: BorderRadius.circular(16)),
          ),
        ),
        title: Text(
          "العناوين",
          style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(16.r),
        children: [
          ...List.generate(
            4,
            (index) => Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: Container(
                padding: EdgeInsets.all(16.r),
                width: 350.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.r),
                  border: Border.all(color: Theme.of(context).primaryColor),
                ),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "المنزل",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Theme.of(context).primaryColor),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "العنوان : 119 طريق الملك عبدالعزيز",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Theme.of(context).primaryColor),
                            ),
                            Text(
                              "الوصف",
                              style: TextStyle(fontSize: 14),
                            ),
                            Text(
                              "رقم الجوال",
                              style: TextStyle(fontSize: 14),
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 60.w,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 60),
                      child: Row(
                        children: [
                          Container(
                              decoration: BoxDecoration(
                                color: Color(0xffFFD4D4),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              padding: EdgeInsets.all(4.r),
                              width: 25.w,
                              height: 25.h,
                              child:
                                  SvgPicture.asset("assets/images/delete.svg")),
                          SizedBox(
                            width: 10.w,
                          ),
                          Container(
                              decoration: BoxDecoration(
                                color: Color(0xff4C8613).withOpacity(.13),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              padding: EdgeInsets.all(4.r),
                              width: 25.w,
                              height: 25.h,
                              child:
                                  SvgPicture.asset("assets/images/edit.svg")),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          OutlinedButton(

            style: OutlinedButton.styleFrom(
              side: BorderSide(

                color: Theme.of(context).primaryColor,
                width: 2.0, // سمك الحاشية
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0), // تعديل شكل الزر حسب الحاجة
              ),
              padding: EdgeInsets.symmetric(
                vertical: 10.0, // ارتفاع الزر
                horizontal: 16.0, // عرض الزر
              ),


            ),
              onPressed: (){}, child: Text("إضافة عنوان",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)),

        ],
      ),
    );
  }
}
