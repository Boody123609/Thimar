import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/design/castama/btn.dart';

class FavPage extends StatelessWidget {
  const FavPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("المفضلة",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Theme.of(context).primaryColor),),
        elevation: 0,
        centerTitle: true,
      ),
      body: ListView(
        children: [
          SizedBox(height: 10.h,),
          GridView.builder(
            padding: EdgeInsets.symmetric(horizontal: 16.h),
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 160 / 250,
                mainAxisSpacing: 16.h,
                crossAxisSpacing: 16.h),
            itemBuilder: (context, index) => Container(
              padding: EdgeInsets.all(9.r),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(17.r),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(.2),
                      offset: Offset(0, 2),
                      blurRadius: 11.r,
                    )
                  ]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(11.r),
                    child: Stack(
                      alignment: AlignmentDirectional.topEnd,
                      children: [
                        Image.network(
                          "https://upload.wikimedia.org/wikipedia/commons/8/89/Tomato_je.jpg",
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.w, vertical: 3.h),
                          child: Text(
                            "45%- ",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          decoration: BoxDecoration(
                            color: Theme.of(context).primaryColor,
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(11.r),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 7.h,
                  ),
                  Text(
                    "طماطم",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Theme.of(context).primaryColor),
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  Text(
                    "السعر / 1كجم",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Theme.of(context).hintColor),
                  ),
                  Text.rich(TextSpan(children: [
                    TextSpan(
                      text: "45 ر.س",
                      style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700,
                          color: Theme.of(context).primaryColor),
                    ),
                    TextSpan(
                      text: " 56 ر.س",
                      style: TextStyle(
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w400,
                          decoration: TextDecoration.lineThrough,
                          color: Theme.of(context).primaryColor),
                    ),
                  ],),),
                  Expanded(
                    child: BTN(isBig: false,
                        text: "أضف للسلة", onPrees: (){}),
                  )
                ],
              ),
            ),
            itemCount: 10,
          )
        ],
      ),
    );
  }
}
