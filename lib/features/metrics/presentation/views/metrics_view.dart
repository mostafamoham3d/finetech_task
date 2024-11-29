import 'package:finetech_task/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class MetricsView extends StatelessWidget {
  const MetricsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: SafeArea(
          child: Column(
            children: [
              ListTile(
                title: const Text('Dashboard'),
                leading: SvgPicture.asset(Assets.assetsIconsDashboardIc),
              ),
              const Gap(12),
              ListTile(
                title: const Text('Statistics'),
                leading: SvgPicture.asset(Assets.assetsIconsStatsIc),
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(),
    );
  }
}
