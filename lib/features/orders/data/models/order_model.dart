import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'order_model.freezed.dart';
part 'order_model.g.dart';

@JsonEnum(valueField: 'value')
enum OrderStatus {
  delivered('DELIVERED'),
  returned('RETURNED'),
  ordered('ORDERED');

  final String value;
  const OrderStatus(this.value);
}

@freezed
class OrderModel with _$OrderModel {
  const factory OrderModel({
    String? id,
    bool? isActive,
    String? price,
    String? company,
    String? picture,
    String? buyer,
    List<String>? tags,
    OrderStatus? status,
    String? registered,
  }) = _OrderModel;

  factory OrderModel.fromJson(Map<String, Object?> json) =>
      _$OrderModelFromJson(json);
}
