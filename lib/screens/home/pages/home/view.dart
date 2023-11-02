import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:thimar_application/core/design/castama/btn.dart';
import 'package:thimar_application/core/design/castama/input.dart';
import 'package:thimar_application/core/design/castama/navigation.dart';
import 'package:thimar_application/models/category.dart';
import 'package:thimar_application/screens/main_screen/product_details/view.dart';

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
  List<MyCategory> kinds = [
    MyCategory(
        id: 0,
        text: "الخضار",
        image:
            "https://avatars.mds.yandex.net/i?id=d88cd7c2346ae39dd9de80a33f51dbea-5317911-images-thumbs&n=13"),
    MyCategory(
        id: 1,
        text: "الفواكه",
        image:
            "https://w.forfun.com/fetch/aa/aa8212667038eeb06e52ff485d02136f.jpeg?w=1470&r=0.5625"),
    MyCategory(
        id: 2,
        text: "اللحوم",
        image:
            "https://gabbismeats.co.za/wp-content/uploads/2020/03/3209-scaled.jpg"),
    MyCategory(
        id: 3,
        text: "البهارات",
        image:
            "https://wallpapers.com/images/featured-full/spices-4pngw1qa0xj352zc.jpg"),
    MyCategory(
        id: 4,
        text: "التمور",
        image:
            "https://www.jovoyparis.com/modules/beyonds_productcustomfieldsjovoy/views/img/features/139.jpg"),
  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leadingWidth: 120.w,
        leading: Padding(
          padding: const EdgeInsets.only(right: 16),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                "assets/images/logo.png",
                height: 20.h,
                width: 20.w,
                fit: BoxFit.scaleDown,
              ),
              SizedBox(
                width: 3.w,
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
                  height: 400.h,
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
                width: 75.w,
                child: Column(
                  children: [
                    Expanded(
                      child: Container(
                          padding: EdgeInsets.all(9),
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                              color: Color(0xffa12cff * (index + 30))
                                  .withOpacity(.5),
                              borderRadius: BorderRadius.circular(10.r)),
                          child: Expanded(
                            child: Image.network(
                              kinds[index].image,
                            ),
                          )),
                    ),
                    SizedBox(
                      height: 7.h,
                    ),
                    Text(
                      kinds[index].text,
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),
              scrollDirection: Axis.horizontal,
              itemCount: kinds.length,
              separatorBuilder: (context, index) => SizedBox(
                width: 10.w,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.r),
            child: Text(
              "الاصناف",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
            ),
          ),
          GridView.builder(
            padding: EdgeInsets.symmetric(horizontal: 16.h),
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 160 / 250,
                mainAxisSpacing: 16.h,
                crossAxisSpacing: 16.h),
            itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                navigateTo(ProductDetailsScreen());
              },
              child: Container(
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
                    Text.rich(
                      TextSpan(
                        children: [
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
                        ],
                      ),
                    ),
                    Expanded(
                      child:
                          BTN(isBig: false, text: "أضف للسلة", onPrees: () {}),
                    )
                  ],
                ),
              ),
            ),
            itemCount: 10,
          )
        ],
      ),
    );
  }
}
