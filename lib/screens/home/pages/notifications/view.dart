import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "الإشعارات",
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) => NotificationItemScreen(),
      ),
    );
  }
}

class NotificationItemScreen extends StatelessWidget {
  const NotificationItemScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20.h),
      width: 345.w,
      height: 80.h,
      color: Colors.white,
      child: ListTile(
        leading: Container(
          padding: EdgeInsets.all(7),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Color(0xff4C8613).withOpacity(.13),
          ),
          width: 33.w,
          height: 33.h,
          child: Image.network(
            "https://cdn1.iconfinder.com/data/icons/pretty-office-part-8/256/user_green-1024.png",
          ),
        ),
        title: Text(
          "رسالة إدارية",
          style: TextStyle(color: Colors.black, fontSize: 12),
        ),
        subtitle: Column(
          children: [
            Text(
                "هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى"),
            Align(
              alignment: AlignmentDirectional.centerStart,
              child: Text(
                "منذ ساعتان",
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
