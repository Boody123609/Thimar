import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BTN extends StatelessWidget {
  final String text;
  final VoidCallback onPrees;
  final bool isBig;



   BTN({Key? key,required this.text, required this.onPrees,  this.isBig= true}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 16),
        child: ElevatedButton(


          onPressed: onPrees,
          child: Text(text,style: TextStyle(

            fontSize: 15,fontWeight: FontWeight.bold
          ),),
          style: ElevatedButton.styleFrom(


              minimumSize: isBig?Size(double.infinity, 60):Size(80, 40),
              shape: RoundedRectangleBorder(

                borderRadius: BorderRadius.circular(15),

              )
          ),
        ),
      ),
    );
  }
}
