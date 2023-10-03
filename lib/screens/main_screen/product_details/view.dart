import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({Key? key}) : super(key: key);

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  int num = 1;
  var data;
  bool isLoading = true ;

  @override
  void initState() {
    getPruductDetails();
    super.initState();
  }
  Future<void>getPruductDetails()async {
    final response=await Dio().get("https://thimar.amr.aait-d.com/api/about");
    print(response.data);
    data=response.data["data"]["about"];
    isLoading=false;
    setState(() {

    });

}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leadingWidth: 70,
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
        actions: [
          Padding(
            padding: const EdgeInsets.only(left: 16.0, top: 5, bottom: 5),
            child: Container(
              child: SvgPicture.asset(
                "assets/images/fav.svg",
                color: Theme.of(context).primaryColor,
                height: 12.h,
                width: 12.w,
                fit: BoxFit.scaleDown,
              ),
              width: 40.w,
              height: 30.h,
              decoration: BoxDecoration(
                  color: Color(0xff4C8613).withOpacity(.13),
                  borderRadius: BorderRadius.circular(16)),
            ),
          )
        ],
      ),
      body: ListView(
        children: [
          ClipRRect(
              borderRadius: BorderRadiusDirectional.only(
                  bottomStart: Radius.circular(60.r),
                  bottomEnd: Radius.circular(60.r)),
              child: Image.network(
                  "https://upload.wikimedia.org/wikipedia/commons/8/89/Tomato_je.jpg")),
          SizedBox(
            height: 16.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 16.w,
              ),
              Text(
                "طماطم",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    color: Theme.of(context).primaryColor),
              ),
              Spacer(),
              Text(
                "40%   ",
                style: TextStyle(color: Colors.red),
              ),
              Text(
                "45ر.س",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                    color: Theme.of(context).primaryColor),
              ),
              Text(
                "  56ر.س",
                style: TextStyle(
                    fontSize: 14,
                    color: Theme.of(context).primaryColor,
                    decoration: TextDecoration.lineThrough),
              ),
              SizedBox(
                width: 22.w,
              )
            ],
          ),
          SizedBox(
            height: 6.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 16.w,
              ),
              Text(
                "السعر / 1كجم",
                style: TextStyle(fontSize: 19),
              ),
              Spacer(),
              Container(
                width: 100.w,
                height: 35.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xff4C8613).withOpacity(.1),
                ),
                child: Row(
                  children: [
                    Spacer(),
                    GestureDetector(
                      onTap: () {
                        num++;
                        setState(() {});
                      },
                      child: Container(
                        width: 30.w,
                        height: 30.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: Icon(Icons.add),
                      ),
                    ),
                    Spacer(),
                    Text("$num"),
                    Spacer(),
                    GestureDetector(
                      onTap: () {
                        if (num > 0) {
                          num--;
                        }
                        setState(() {});
                      },
                      child: Container(
                        width: 30.w,
                        height: 30.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: Icon(Icons.remove),
                      ),
                    ),
                    Spacer(),
                  ],
                ),
              ),
              SizedBox(
                width: 18.w,
              ),
            ],
          ),
          Divider(),
          Row(
            children: [
              SizedBox(
                width: 16.w,
              ),
              Text(
                "كود المنتج",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).primaryColor),
              ),
              SizedBox(
                width: 7.w,
              ),
              Text(
                "56638",
                style: TextStyle(fontSize: 19),
              )
            ],
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Text(
              "تفاصيل المنتج",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).primaryColor),
            ),
          ),
          Text("")
        ],
      ),
    );
  }
}
