import 'package:dev_do/ui/screens/splash_screen.dart';
import 'package:dev_do/ui/utility/app_colors.dart';
import 'package:flutter/material.dart';

class TaskManagerApp extends StatelessWidget {
  const TaskManagerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
      theme: lightThemeData(),
    );
  }

  ThemeData lightThemeData() {
    return ThemeData(
      inputDecorationTheme: InputDecorationTheme(
        fillColor: Colors.white,
        filled: true,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.themeColor,
          padding: EdgeInsets.symmetric(vertical: 12),
          foregroundColor: AppColors.white,
          fixedSize: Size.fromWidth(double.maxFinite),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(8),
          ),
        ),
      ),
    );
  }
}
