import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
class MyCartItem extends StatefulWidget {
  const MyCartItem({Key? key}) : super(key: key);

  @override
  State<MyCartItem> createState() => _MyCartItemState();
}

class _MyCartItemState extends State<MyCartItem> {
  int num=1;
  @override
  Widget build(BuildContext context) {
        return Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.network(
                "https://upload.wikimedia.org/wikipedia/commons/8/89/Tomato_je.jpg",
                width: 92.w,
                height: 78.h,
              ),
            ),
            SizedBox(
              width: 10.w,
            ),
            Column(
              children: [
                Text(
                  "طماطم",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Theme.of(context).primaryColor),
                ),
                Text(
                  "45 ر.س",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                      color: Theme.of(context).primaryColor),
                ),
                Container(
                  width: 70.w,
                  height: 25.h,
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
                          width: 20.w,
                          height: 20.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: Icon(Icons.add),
                        ),
                      ),
                      Spacer(),
                      Text(
                        "$num",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      Spacer(),
                      GestureDetector(
                        onTap: () {
                          if (num > 0) {
                            num--;
                          }
                          setState(() {});
                        },
                        child: Container(
                          width: 20.w,
                          height: 20.h,
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
              ],
            ),
            Spacer(),
            Container(
                decoration: BoxDecoration(
                  color: Color(0xffFFD4D4),
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.all(4.r),
                width: 25.w,
                height: 25.h,
                child: SvgPicture.asset("assets/images/delete.svg")),
          ],
        );

  }
}
