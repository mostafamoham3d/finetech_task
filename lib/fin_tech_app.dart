import 'package:finetech_task/core/utils/colors.dart';
import 'package:finetech_task/features/metrics/presentation/views/metrics_view.dart';
import 'package:flutter/material.dart';

class FinTechApp extends StatelessWidget {
  const FinTechApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FinTech Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.mainColor),
        primaryColor: AppColors.mainColor,
        useMaterial3: true,
      ),
      home: const MetricsView(),
    );
  }
}
