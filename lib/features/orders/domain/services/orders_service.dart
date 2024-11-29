import 'package:collection/collection.dart';
import 'package:finetech_task/features/orders/data/models/order_model.dart';

class OrdersService {
  Map<OrderStatus, List<OrderModel>> groupOrdersByStatus({
    required List<OrderModel> orders,
  }) {
    Map<OrderStatus, List<OrderModel>> groupedOrders =
        groupBy(orders, (OrderModel order) => order.status!);
    return groupedOrders;
  }

  Map<OrderStatus, int> countOrdersByStatus(
      {required Map<OrderStatus, List<OrderModel>> groupedOrders}) {
    Map<OrderStatus, int> ordersCount =
        groupedOrders.map((key, value) => MapEntry(key, value.length));

    return ordersCount;
  }
}
