import 'dart:developer';

import 'package:finetech_task/features/dashboard/presentation/widgets/order_list_item.dart';
import 'package:finetech_task/features/orders/data/models/order_model.dart';
import 'package:finetech_task/features/orders/presentation/controllers/orders_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class OrdersListView extends StatelessWidget {
  const OrdersListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OrdersCubit, OrdersState>(
      builder: (context, state) {
        final List<OrderModel> orders =
            state.ordersByStatus[state.status] ?? [];
        log(state.ordersByStatus.toString());
        return ListView.separated(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (context, index) => OrderListItem(
            orderModel: orders[index],
          ),
          separatorBuilder: (context, index) => const Gap(16),
          itemCount: orders.length,
        );
      },
    );
  }
}
