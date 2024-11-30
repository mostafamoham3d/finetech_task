import 'package:finetech_task/core/utils/colors.dart';
import 'package:finetech_task/core/widgets/indicator.dart';
import 'package:finetech_task/features/orders/data/models/order_model.dart';
import 'package:finetech_task/features/orders/presentation/controllers/orders_cubit.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class PieChartOrdersStatsWidget extends StatelessWidget {
  const PieChartOrdersStatsWidget({
    super.key,
  });

  Color getSectionColor(OrderStatus status) {
    switch (status) {
      case OrderStatus.delivered:
        return AppColors.greenColor;
      case OrderStatus.returned:
        return AppColors.redColor;
      case OrderStatus.ordered:
        return AppColors.mainColor;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OrdersCubit, OrdersState>(
      builder: (context, state) {
        final Map<OrderStatus, int> orders = state.ordersCount;
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Orders Stats',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const Gap(16),
            Container(
              padding: const EdgeInsets.all(12),
              height: 175,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: PieChart(PieChartData(
                      sections: orders.entries
                          .map(
                            (entry) => PieChartSectionData(
                              color: getSectionColor(entry.key),
                              value: entry.value.toDouble(),
                              //radius: 16,
                              showTitle: true,
                              titleStyle: const TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          )
                          .toList(), // Use the entries from your map
                    )),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: orders.entries
                          .map(
                            (entry) => Indicator(
                              color: getSectionColor(entry.key),
                              text: entry.key.name,
                              isSquare: false,
                            ),
                          )
                          .toList(),
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
