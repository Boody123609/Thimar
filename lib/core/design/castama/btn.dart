import 'package:flutter/material.dart';

class BTN extends StatelessWidget {
  final String text;
  final VoidCallback onPrees;



   BTN({Key? key,required this.text, required this.onPrees}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 16),
        child: ElevatedButton(

          onPressed: () {},
          child: Text(text,style: TextStyle(
            fontSize: 15,fontWeight: FontWeight.bold
          ),),
          style: ElevatedButton.styleFrom(minimumSize: Size(double.infinity, 60),
              shape: RoundedRectangleBorder(

                borderRadius: BorderRadius.circular(15),

              )
          ),
        ),
      ),
    );
  }
}
