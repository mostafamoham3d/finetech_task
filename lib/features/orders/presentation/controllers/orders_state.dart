part of 'orders_cubit.dart';

@freezed
class OrdersState with _$OrdersState {
  const factory OrdersState({
    @Default(OrderStatus.ordered) OrderStatus status,
    @Default([]) List<OrderModel> orders,
    @Default({}) Map<OrderStatus, List<OrderModel>> ordersByStatus,
    @Default({}) Map<OrderStatus, int> ordersCount,
  }) = _OrdersState;
}
