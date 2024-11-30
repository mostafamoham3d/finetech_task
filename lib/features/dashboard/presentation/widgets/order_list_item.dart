import 'package:finetech_task/features/orders/data/models/order_model.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/utils/colors.dart';

class OrderListItem extends StatelessWidget {
  final OrderModel orderModel;
  const OrderListItem({
    super.key,
    required this.orderModel,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: Row(
        children: [
          Expanded(
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      width: 3,
                      color: AppColors.mainColor,
                    ),
                  ),
                ),
                const Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Icon(Icons.hourglass_disabled_sharp)),
              ],
            ),
          ),
          const Gap(16),
          Expanded(
            flex: 3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('صيدلية', style: Theme.of(context).textTheme.bodyLarge),
                Text('تم التوصيل',
                    style: Theme.of(context).textTheme.bodySmall),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('15 اكتوبر 2024',
                    style: Theme.of(context).textTheme.bodySmall),
                Text(
                  '25 جنيه',
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: AppColors.mainColor,
                      ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
