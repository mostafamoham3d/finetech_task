import 'dart:developer';

import 'package:collection/collection.dart';
import 'package:finetech_task/features/orders/data/models/order_model.dart';
import 'package:intl/intl.dart';

class OrdersService {
  Map<OrderStatus, List<OrderModel>> groupOrdersByStatus({
    required List<OrderModel> orders,
  }) {
    Map<OrderStatus, List<OrderModel>> groupedOrders =
        groupBy(orders, (OrderModel order) => order.status!);
    return groupedOrders;
  }

  Map<OrderStatus, int> countOrdersByStatus({
    required List<OrderModel> orders,
  }) {
    log(name: 'orders', orders.toString());
    Map<OrderStatus, int> ordersCount =
        groupBy(orders, (OrderModel order) => order.status!)
            .map((key, value) => MapEntry(key, value.length));

    return ordersCount;
  }

  double calculateAveragePrice(List<OrderModel> orders) {
    double total = 0;
    for (var order in orders) {
      total += double.parse(
        order.price!.substring(1).replaceAll(
              ',',
              '',
            ),
      );
    }
    return total / orders.length;
  }

  Map<String, List<OrderModel>> groupOrdersByDate(List<OrderModel> orders) {
    Map<String, List<OrderModel>> groupedOrders = groupBy(
      orders,
      (OrderModel order) =>
          DateFormat.yMMMd().format(DateTime.parse(order.registered!)),
    );
    return groupedOrders;
  }
}
