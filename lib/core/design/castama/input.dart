import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'btn.dart';

class Input extends StatelessWidget {
  final String text;
  final String imagepath;
  final String? imagepathSuffix;
  final TextEditingController? controller;
  final bool isPhone;
  final bool isShown;
  final bool isSearch;
  final bool isSvg;


  Input({
    Key? key,
    required this.text,
    required this.imagepath,
    this.isPhone = false,
    this.isShown = false,
    this.isSearch = false,
    this.controller,
    this.isSvg = true,
      this.imagepathSuffix,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (isPhone)
          Padding(
            padding: const EdgeInsets.only(left: 9.0),
            child: Container(
              height: 60.h,
              width: 70.w,
              decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Color(0xffF3F3F3)),
                  borderRadius: BorderRadius.circular(15)),
              child: Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset("assets/images/soudia.png"),
                    ),
                    Text(
                      "966+",
                    )
                  ],
                ),
              ),
            ),
          ),
        Expanded(
          child: TextFormField(
            controller: controller,
            keyboardType: isPhone ? TextInputType.phone : TextInputType.text,
            decoration: InputDecoration(
              suffixIcon: imagepathSuffix!=null?Padding(
                padding: const EdgeInsets.all(20),
                child: Image.asset(imagepathSuffix!,width: 20.w,height: 20.h,),
              ):null,
              prefixIcon: Padding(
                padding: const EdgeInsets.all(20),
                child: isSvg
                    ? SvgPicture.asset(
                        imagepath,
                        width: 20.w,
                        height: 20.h,
                      )
                    : Image.asset(
                        imagepath,
                        width: 20.w,
                        height: 20.h,
                      ),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(16)),
              ),
              contentPadding: EdgeInsetsDirectional.only(bottom: 30.h),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(16)),
                borderSide: BorderSide(
                  width: 2,
                  color: Color(0xffF3F3F3),
                ),
              ),
              labelText: text,
            ),
          ),
        ),
      ],
    );
  }
}
