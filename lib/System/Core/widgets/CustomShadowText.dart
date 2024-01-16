import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ShadowTextElectro extends StatelessWidget {
  final String text;
  double bRadius;
  final Offset offsetmy;
  double tSize;
  final Color tColor;
  int? line;
  ShadowTextElectro({
    Key? key,
    required this.text,
    required this.bRadius,
    required this.offsetmy,
    required this.tSize,
    required this.tColor,
    this.line,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: line,
      overflow: TextOverflow.ellipsis,
      style: GoogleFonts.electrolize(
          shadows: [
            Shadow(
              color: Colors.black.withOpacity(0.3),
              blurRadius: bRadius,
              offset: offsetmy,
            ),
          ],
          fontWeight: FontWeight.bold,
          decoration: TextDecoration.none,
          fontSize: tSize,
          letterSpacing: 4.r,
          color: tColor),
    );
  }
}

class ShadowTextElectroLato extends StatelessWidget {
  final String text;
  double bRadius;
  final Offset offsetmy;
  double tSize;
  final Color tColor;
  int? line;
  ShadowTextElectroLato({
    Key? key,
    required this.text,
    required this.bRadius,
    required this.offsetmy,
    required this.tSize,
    required this.tColor,
    this.line,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      maxLines: line,
      overflow: TextOverflow.ellipsis,
      style: GoogleFonts.lato(
          shadows: [
            Shadow(
              color: Colors.black.withOpacity(0.7),
              blurRadius: bRadius,
              offset: offsetmy,
            ),
          ],
          fontWeight: FontWeight.bold,
          decoration: TextDecoration.none,
          fontSize: tSize,
          color: tColor),
    );
  }
}
