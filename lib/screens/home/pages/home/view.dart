import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:thimar_application/core/design/castama/input.dart';

import '../../../../core/design/castama/app_bar_custam.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List images = [
    "https://static.webteb.net/images/content/tbl_articles_article_17115_62621da2502-cd69-4893-9567-0675a03e1b6a.jpg",
    "https://media.gemini.media/img/Medium/2023/7/10/2023_7_10_17_5_49_144.jpg",
    "https://mf.b37mrtl.ru/media/pics/2021.07/original/60dda1fd4c59b735ee78b3a2.jpg",
    "https://mf.b37mrtl.ru/media/pics/2022.02/original/621743384c59b76a02442e3e.jpg",
    "https://media.gemini.media/img/large/2022/1/31/2022_1_31_15_17_26_98.jpg",
  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leadingWidth: 100.w,
        leading: Padding(
          padding: const EdgeInsets.only(right: 16),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                "assets/images/logo.png",
                height: 20,
                width: 20,
                fit: BoxFit.scaleDown,
              ),
              SizedBox(
                width: 3,
              ),
              Text(
                "سلة ثمار",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Theme.of(context).primaryColor),
              )
            ],
          ),
        ),
        title: Column(
          children: [
            Text(
              "التوصيل إلى",
              style: TextStyle(
                  fontSize: 14, color: Theme.of(context).primaryColor),
            ),
            Text(
              "شارع الملك فهد - جدة",
              style: TextStyle(
                  fontSize: 14, color: Theme.of(context).primaryColor),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Badge(
              backgroundColor: Theme.of(context).primaryColor,
              smallSize: 8.w,
              largeSize: 10.w,
              alignment: AlignmentDirectional.topStart,
              label: Text("7"),
              child: Container(
                height: 40.h,
                width: 40.w,
                // padding: EdgeInsets.all(10),
                // margin: EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                    color: Color(0xff4C8613).withOpacity(.13),
                    borderRadius: BorderRadius.circular(16)),
                child: SvgPicture.asset(
                  "assets/images/not.svg",
                  fit: BoxFit.scaleDown,
                ),
              ),
            ),
          )
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 6),
            child: Input(
              text: "ابحث عن ماتريد؟",
              imagepath: "assets/images/Search.svg",
            ),
          ),
          SizedBox(
            height: 164.h,
            child: CarouselSlider(
              options: CarouselOptions(
                  height: 400.0,
                  onPageChanged: (index, reason) {
                    currentIndex = index;
                    setState(() {});
                  },
                  autoPlay: true),
              items: List.generate(
                images.length,
                (index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        border:
                            Border.all(color: Theme.of(context).primaryColor)),
                    child: Image.network(
                      images[index],
                      width: double.infinity.w,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
                images.length,
                (index) => Padding(
                      padding: EdgeInsetsDirectional.only(end: 3),
                      child: CircleAvatar(
                        backgroundColor: Theme.of(context)
                            .primaryColor
                            .withOpacity(currentIndex == index ? 1 : .38),
                        radius: 3.5.r,
                      ),
                    )),
          ),
          Padding(
            padding: EdgeInsets.all(16.r),
            child: Row(
              children: [
                Text(
                  "الأقسام",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
                ),
                Spacer(),
                Text(
                  "عرض الكل",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Theme.of(context).primaryColor),
                )
              ],
            ),
          ),
          SizedBox(
              height: 103.h,
              child: ListView.separated(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                itemBuilder: (context, index) => Container(

                  width: 102.w,
                  child: Column(
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(15.r),
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            color: Color(0xffa12cff*(index+20)),
                            borderRadius: BorderRadius.circular(10.r)
                          ),
                            child: Image.network("https://www.hasanbabamanav.com/Files/bg-crm-program-8469-15-04-2021-12-53-37.png")),
                      ),
                      SizedBox(height: 7,),
                      Text("الخضار",style: TextStyle(fontSize: 20),),
                    ],
                  ),
                ),
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                separatorBuilder: (context, index) => SizedBox(
                  width: 16.w,
                ),
              ))
        ],
      ),
    );
  }
}
