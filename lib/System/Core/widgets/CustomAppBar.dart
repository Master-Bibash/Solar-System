import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/System/Core/widgets/CustomAnimation.dart';
import 'package:flutter_application_1/System/Resources/Shadow.dart';
import 'package:flutter_application_1/System/Resources/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBar extends StatelessWidget {
  final String text;
  final child1;
  final child2;
  final Function()? onTap;
  const CustomAppBar({
    Key? key,
    required this.text,
    this.onTap,
    this.child1,
    this.child2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyCustomAnimation(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: onTap,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(9.r),
                  border: Border.all(color: white, width: 2.5),
                  boxShadow: const [AppBarShadow],
                  color: black),
              height: 40.h,
              width: 40.w,
              child: Center(child: child1),
            ),
          ),
          Text(
            text,
            style: GoogleFonts.electrolize(
                fontWeight: FontWeight.bold,
                color: white,
                fontSize: 18.sp,
                letterSpacing: 3.r),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: white, width: 2.5),
              boxShadow: const [AppBarShadow],
              color: black,
              borderRadius: BorderRadius.circular(9.r),
            ),
            height: 40.h,
            width: 40.w,
            child: Center(child: child2),
          ),
        ],
      ),
    );
  }
}
