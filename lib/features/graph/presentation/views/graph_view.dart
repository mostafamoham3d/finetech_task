import 'dart:math';

import 'package:finetech_task/core/utils/colors.dart';
import 'package:finetech_task/features/orders/presentation/controllers/orders_cubit.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class GraphView extends StatefulWidget {
  const GraphView({super.key});

  @override
  State<StatefulWidget> createState() => BarChartSample1State();
}

class BarChartSample1State extends State<GraphView> {
  @override
  void initState() {
    Future.delayed(Duration.zero, () async {
      await context.read<OrdersCubit>().fetchOrders();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Bar Chart',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        const Gap(24),
        AspectRatio(
          aspectRatio: 1,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                const Gap(
                  32,
                ),
                Expanded(
                  child: BarChart(
                    randomData(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  BarChartGroupData makeGroupData(
    int x,
    double y,
  ) {
    return BarChartGroupData(
      x: x,
      barRods: [
        BarChartRodData(
          toY: y,
          color: AppColors.mainColor,
          borderRadius: BorderRadius.zero,
          width: 22,
          borderSide: const BorderSide(color: Colors.grey, width: 2.0),
        ),
      ],
    );
  }

  Widget getTitles(double value, TitleMeta meta, List<String> days) {
    const style = TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontSize: 14,
    );
    List<String> days = ['M', 'T', 'W', 'T', 'F', 'S', 'S'];

    Widget text = Text(
      days[value.toInt()],
      style: style,
    );

    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 16,
      child: text,
    );
  }

  BarChartData randomData() {
    return BarChartData(
      maxY: 10.0,
      barTouchData: BarTouchData(
        enabled: false,
      ),
      titlesData: FlTitlesData(
        show: true,
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            getTitlesWidget: (value, meta) {
              return BlocBuilder<OrdersCubit, OrdersState>(
                  builder: (context, state) {
                final List<String> days = context
                    .read<OrdersCubit>()
                    .groupOrdersByDate()
                    .keys
                    .toList();
                return getTitles(value, meta, days);
              });
            },
            reservedSize: 38,
          ),
        ),
        leftTitles: const AxisTitles(
          sideTitles: SideTitles(
            reservedSize: 60,
            showTitles: true,
          ),
        ),
        topTitles: const AxisTitles(
          sideTitles: SideTitles(
            showTitles: false,
          ),
        ),
        rightTitles: const AxisTitles(
          sideTitles: SideTitles(
            showTitles: false,
          ),
        ),
      ),
      borderData: FlBorderData(
        show: false,
      ),
      barGroups: List.generate(
        7,
        (i) => makeGroupData(
          i,
          context
              .watch<OrdersCubit>()
              .groupOrdersByDate()
              .values
              .toList()[i]
              .length
              .toDouble(),
        ),
      ),
      gridData: const FlGridData(show: true),
    );
  }
}
