import 'package:bloc/bloc.dart';
import 'package:finetech_task/features/orders/data/repos/orders_repo.dart';
import 'package:finetech_task/features/orders/domain/services/orders_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/order_model.dart';

part 'orders_state.dart';
part 'orders_cubit.freezed.dart';

class OrdersCubit extends Cubit<OrdersState> {
  final OrdersRepo ordersRepo;
  final OrdersService ordersService;
  OrdersCubit({
    required this.ordersRepo,
    required this.ordersService,
  }) : super(const OrdersState());

  Future<void> fetchOrders() async {
    final orders = await ordersRepo.fetchOrders();
    emit(
      state.copyWith(
        orders: orders,
      ),
    );
  }

  void groupOrdersByStatus() async {
    final orders = ordersService.groupOrdersByStatus(orders: state.orders);
    emit(
      state.copyWith(
        ordersByStatus: orders,
      ),
    );
  }

  void countOrdersByStatus() {
    final orders = ordersService.countOrdersByStatus(
      orders: state.orders,
    );
    emit(
      state.copyWith(
        ordersCount: orders,
      ),
    );
  }

  double caculateAveragePrice() {
    return ordersService.calculateAveragePrice(state.orders);
  }

  changeSelectedOrderStatus(OrderStatus status) {
    emit(
      state.copyWith(
        status: status,
      ),
    );
  }

  Map<String, List<OrderModel>> groupOrdersByDate() {
    final orders = ordersService.groupOrdersByDate(state.orders);
    return orders;
  }
}
