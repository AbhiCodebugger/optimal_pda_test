import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loggy/loggy.dart';
import 'package:pdh_test_flutter/bindings/sleep_binding.dart';
import 'package:pdh_test_flutter/config/colors.dart';
import 'package:pdh_test_flutter/modules/home/screens/home_screen.dart';
import 'package:pdh_test_flutter/modules/sleep/controllers/sleep_controller.dart';

void main() {
  // Initialise logging package
  Loggy.initLoggy();

  Get.put(SleepController());

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'PDH Flutter Test',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: AppColors.darkBlue,
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.darkBlue,
        ),
        backgroundColor: AppColors.darkBlue,
        scaffoldBackgroundColor: AppColors.darkBlue,
        brightness: Brightness.dark,
        textTheme: const TextTheme(
          bodyText1: TextStyle(
            fontFamily: 'Nunito',
            color: Colors.white,
          ),
        ),
      ),
      initialRoute: '/',
      getPages: [
        GetPage(
          name: '/',
          page: () => const HomeScreen(),
          binding: SleepBinding(),
        ),
      ],
    );
  }
}
