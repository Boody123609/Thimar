import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/design/castama/btn.dart';

class SuggestionsPage extends StatelessWidget {
  const SuggestionsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        elevation: 0,
        backgroundColor: Colors.white24,
        leading: Container(
          height: 22,
          width: 40,
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.only(right: 16),
          decoration: BoxDecoration(
              color: Color(0xff4C8613).withOpacity(.13),
              borderRadius: BorderRadius.circular(16)),
          child: SvgPicture.asset("assets/images/arrow.svg",fit: BoxFit.scaleDown,),
        ),
        title: Text(
          "الأقتراحات والشكاوي",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color(0xff4C8613)),
        ),
        centerTitle: true,

      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 17),
        children: [
          SizedBox(height: 50,),
          TextFormField(
            
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(16)),
              ),
              enabledBorder: OutlineInputBorder(

                borderRadius: BorderRadius.circular(11)
              ),
              labelText: "الإسم",
            ),
          ),
          SizedBox(height: 10,),
          TextFormField(

            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(16)),
              ),
              enabledBorder: OutlineInputBorder(

                borderRadius: BorderRadius.circular(11)
              ),
              labelText: "رقم الموبايل",
            ),
          ),
          SizedBox(height: 10,),
          TextFormField(
            maxLines: 5,
            // minLines: 4,

            decoration: InputDecoration(

              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(16)),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(11)
              ),
              labelText: "الموضوع",
              // labelStyle: TextStyle()
            ),
          ),
          SizedBox(height: 22
            ,),

          BTN(text: "إرسال", onPrees: (){})
        ],
      ),
    );
  }
}
