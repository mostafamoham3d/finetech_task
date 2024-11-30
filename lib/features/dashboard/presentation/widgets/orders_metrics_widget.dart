import 'package:finetech_task/features/orders/presentation/controllers/orders_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

import '../../../orders/data/models/order_model.dart';

class OrdersMetricsWidget extends StatelessWidget {
  const OrdersMetricsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OrdersCubit, OrdersState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Orders Metrics',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const Gap(16),
            Container(
              height: 120,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Count',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      Text(state.orders.length.toString()),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Avg. Price',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      Text(
                          '${context.read<OrdersCubit>().caculateAveragePrice().toStringAsFixed(2)} \$'),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'No. of Returned',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      Text(state.ordersCount[OrderStatus.returned].toString()),
                    ],
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
