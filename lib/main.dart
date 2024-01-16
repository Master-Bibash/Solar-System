import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/System/Core/Screens/HomeScreen.dart';
import 'package:flutter_application_1/System/Resources/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(SolarApp());
}

class SolarApp extends StatelessWidget {
  const SolarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: "SolarPlanet",
          theme: ThemeData(
            scaffoldBackgroundColor: white,
            primarySwatch: Colors.blue,
            useMaterial3: true,
          ),
          home: HomeScreen(),
        );
      },
    );
  }
}
