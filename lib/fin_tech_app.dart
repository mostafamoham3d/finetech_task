import 'package:finetech_task/core/utils/colors.dart';
import 'package:finetech_task/features/home/presentation/views/home_view.dart';
import 'package:flutter/material.dart';

class FinTechApp extends StatelessWidget {
  const FinTechApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FinTech Demo',
      theme: ThemeData(
          scaffoldBackgroundColor: const Color(0xffF7F9FA),
          colorScheme: ColorScheme.fromSeed(seedColor: AppColors.mainColor),
          primaryColor: AppColors.mainColor,
          useMaterial3: true,
          textTheme: const TextTheme(
            titleLarge: TextStyle(
              fontSize: 22,
              color: AppColors.mainColor,
              fontWeight: FontWeight.bold,
            ),
            bodyLarge: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
            bodyMedium: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
            bodySmall: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          )),
      home: const HomeView(),
    );
  }
}
