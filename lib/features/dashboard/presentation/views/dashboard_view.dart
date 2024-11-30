import 'package:finetech_task/core/widgets/indicator.dart';
import 'package:finetech_task/features/dashboard/presentation/widgets/order_list_item.dart';
import 'package:finetech_task/features/dashboard/presentation/widgets/orders_list_view.dart';
import 'package:finetech_task/features/dashboard/presentation/widgets/orders_metrics_widget.dart';
import 'package:finetech_task/features/dashboard/presentation/widgets/orders_tab_bar_widget.dart';
import 'package:finetech_task/features/dashboard/presentation/widgets/pie_chart_orders_stats_widget.dart';
import 'package:finetech_task/features/orders/data/repos/orders_repo.dart';
import 'package:finetech_task/features/orders/domain/services/orders_service.dart';
import 'package:finetech_task/features/orders/presentation/controllers/orders_cubit.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

import '../../../../core/utils/colors.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
   @override
  void initState() {
    Future.delayed(Duration.zero, () async {
      await context.read<OrdersCubit>().fetchOrders();
      context.read<OrdersCubit>().countOrdersByStatus();
      context.read<OrdersCubit>().groupOrdersByStatus();
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: ListView(
          children: const [
            PieChartOrdersStatsWidget(),
            Gap(16),
            OrdersMetricsWidget(),
            Gap(16),
            OrdersTabBarWidget(),
            Gap(16),
            OrdersListView()
          ],
        ),
      );
  }
}
