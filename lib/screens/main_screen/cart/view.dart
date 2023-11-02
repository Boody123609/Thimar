import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:thimar_application/core/design/castama/btn.dart';

import '../../../core/design/catogary/cart_item.dart';

class CartScreen extends StatefulWidget {
  CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  int num = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "السلة",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).primaryColor),
        ),
        centerTitle: true,
        elevation: 0,
        leading: GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
          child: Padding(
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
                  borderRadius: BorderRadius.circular(16.r)),
            ),
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 16),
        children: [
          MyCartItem(),
          MyCartItem(),
          MyCartItem(),
          MyCartItem(),
          Padding(
            padding: const EdgeInsets.only(top: 12.0, bottom: 12, right: 12),
            child: Row(
              children: [
                Text(
                  "عندك كوبون ؟ ادخل رقم الكوبون",
                  style: TextStyle(fontSize: 15, color: Color(0xffB9C9A8)),
                ),
                Spacer(),
                BTN(
                  text: "تطبيق",
                  onPrees: () {},
                  isBig: false,
                )
              ],
            ),
          ),
          Text(
            "جميع الأسعار تشمل قيمة الضريبة المضافة 15%",
            style:
                TextStyle(color: Theme.of(context).primaryColor, fontSize: 15),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10.h),
            padding: EdgeInsets.all(16.r),
            decoration: BoxDecoration(
                color: Color(0xffF3F8EE),
                borderRadius: BorderRadius.circular(16.r)),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "إجمالي المنتجات",
                      style: TextStyle(
                          fontSize: 15, color: Theme.of(context).primaryColor),
                    ),
                    Spacer(),
                    Text(
                      "180 ر.س",
                      style: TextStyle(
                          fontSize: 15, color: Theme.of(context).primaryColor),
                    ),
                  ],
                ),
                Divider(),
                Row(
                  children: [
                    Text(
                      "إجمالي المنتجات",
                      style: TextStyle(
                          fontSize: 15, color: Theme.of(context).primaryColor),
                    ),
                    Spacer(),
                    Text(
                      "180 ر.س",
                      style: TextStyle(
                          fontSize: 15, color: Theme.of(context).primaryColor),
                    ),
                  ],
                ),
                Divider(),
                Row(
                  children: [
                    Text(
                      "إجمالي المنتجات",
                      style: TextStyle(
                          fontSize: 15, color: Theme.of(context).primaryColor),
                    ),
                    Spacer(),
                    Text(
                      "180 ر.س",
                      style: TextStyle(
                          fontSize: 15, color: Theme.of(context).primaryColor),
                    ),
                  ],
                ),
              ],
            ),
          ),
          BTN(text: "الانتقال لإتمام الطلب", onPrees: () {}),
        ],
      ),
    );
  }
}
