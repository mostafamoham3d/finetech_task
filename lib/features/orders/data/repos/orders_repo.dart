import 'dart:convert';

import 'package:finetech_task/core/utils/assets.dart';
import 'package:finetech_task/features/orders/data/models/order_model.dart';
import 'package:flutter/services.dart';

class OrdersRepo {
  Future<List<OrderModel>> fetchOrders() async {
    try {
      final String response =
          await rootBundle.loadString(Assets.assetsJsonOrders);
      final data = await json.decode(response);

      return data.map<OrderModel>((e) => OrderModel.fromJson(e)).toList();
    } catch (e) {
      return [];
    }
  }
}
