import 'package:finetech_task/features/dashboard/presentation/views/dashboard_view.dart';
import 'package:finetech_task/features/dashboard/presentation/widgets/pie_chart_orders_stats_widget.dart';
import 'package:finetech_task/features/graph/presentation/views/graph_view.dart';
import 'package:finetech_task/features/home/presentation/widgets/drawer_view.dart';
import 'package:finetech_task/features/orders/presentation/controllers/orders_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class WebHomeView extends StatefulWidget {
  const WebHomeView({super.key});

  @override
  State<WebHomeView> createState() => _WebHomeViewState();
}

class _WebHomeViewState extends State<WebHomeView> {
  // @override
  // void initState() {
  //   Future.delayed(Duration.zero, () async {
  //     await context.read<OrdersCubit>().fetchOrders();
  //     context.read<OrdersCubit>().countOrdersByStatus();
  //     context.read<OrdersCubit>().groupOrdersByStatus();
  //   });
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Row(
        children: [
          Expanded(child: DrawerView()),
          Gap(12),
          Expanded(
            flex: 4,
            child: DashboardView(),
          ),
          Gap(16),
          Expanded(
            child: GraphView(),
          ),
        ],
      ),
    );
  }
}
