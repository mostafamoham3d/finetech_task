import 'package:finetech_task/core/utils/colors.dart';
import 'package:finetech_task/features/orders/data/models/order_model.dart';
import 'package:finetech_task/features/orders/presentation/controllers/orders_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class OrdersTabBarWidget extends StatelessWidget {
  const OrdersTabBarWidget({super.key});
  static List<OrderStatus> status = [
    OrderStatus.delivered,
    OrderStatus.returned,
    OrderStatus.ordered,
  ];
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OrdersCubit, OrdersState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Orders',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const Gap(16),
            SizedBox(
              height: 60,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => state.status == status[index]
                      ? SelectedTabBarItem(status: status[index])
                      : GestureDetector(
                          onTap: () => context
                              .read<OrdersCubit>()
                              .changeSelectedOrderStatus(status[index]),
                          child: UnSelectedTabBarItem(
                            status: status[index],
                          ),
                        ),
                  separatorBuilder: (context, index) => const Gap(16),
                  itemCount: status.length),
            ),
          ],
        );
      },
    );
  }
}

class SelectedTabBarItem extends StatelessWidget {
  final OrderStatus status;
  const SelectedTabBarItem({
    super.key,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: AppColors.mainColor,
      ),
      child: Text(
        status.name,
        style: Theme.of(context)
            .textTheme
            .bodyLarge!
            .copyWith(color: Colors.white),
      ),
    );
  }
}

class UnSelectedTabBarItem extends StatelessWidget {
  final OrderStatus status;
  const UnSelectedTabBarItem({
    super.key,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Text(
        status.name,
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}
