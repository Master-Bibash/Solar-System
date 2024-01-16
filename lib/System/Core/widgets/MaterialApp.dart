import 'package:flutter/material.dart';
import 'package:flutter_application_1/System/Resources/Images.dart';

class CustomMaterialApp extends StatelessWidget {
  final child;
  const CustomMaterialApp({super.key, this.child});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: const BoxDecoration(
            image:
                DecorationImage(image: AssetImage(space), fit: BoxFit.cover)),
        child: child,
      ),
    );
  }
}
