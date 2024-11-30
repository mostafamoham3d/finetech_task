// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'orders_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OrdersState {
  OrderStatus get status => throw _privateConstructorUsedError;
  List<OrderModel> get orders => throw _privateConstructorUsedError;
  Map<OrderStatus, List<OrderModel>> get ordersByStatus =>
      throw _privateConstructorUsedError;
  Map<OrderStatus, int> get ordersCount => throw _privateConstructorUsedError;

  /// Create a copy of OrdersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrdersStateCopyWith<OrdersState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrdersStateCopyWith<$Res> {
  factory $OrdersStateCopyWith(
          OrdersState value, $Res Function(OrdersState) then) =
      _$OrdersStateCopyWithImpl<$Res, OrdersState>;
  @useResult
  $Res call(
      {OrderStatus status,
      List<OrderModel> orders,
      Map<OrderStatus, List<OrderModel>> ordersByStatus,
      Map<OrderStatus, int> ordersCount});
}

/// @nodoc
class _$OrdersStateCopyWithImpl<$Res, $Val extends OrdersState>
    implements $OrdersStateCopyWith<$Res> {
  _$OrdersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrdersState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? orders = null,
    Object? ordersByStatus = null,
    Object? ordersCount = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as OrderStatus,
      orders: null == orders
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<OrderModel>,
      ordersByStatus: null == ordersByStatus
          ? _value.ordersByStatus
          : ordersByStatus // ignore: cast_nullable_to_non_nullable
              as Map<OrderStatus, List<OrderModel>>,
      ordersCount: null == ordersCount
          ? _value.ordersCount
          : ordersCount // ignore: cast_nullable_to_non_nullable
              as Map<OrderStatus, int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrdersStateImplCopyWith<$Res>
    implements $OrdersStateCopyWith<$Res> {
  factory _$$OrdersStateImplCopyWith(
          _$OrdersStateImpl value, $Res Function(_$OrdersStateImpl) then) =
      __$$OrdersStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {OrderStatus status,
      List<OrderModel> orders,
      Map<OrderStatus, List<OrderModel>> ordersByStatus,
      Map<OrderStatus, int> ordersCount});
}

/// @nodoc
class __$$OrdersStateImplCopyWithImpl<$Res>
    extends _$OrdersStateCopyWithImpl<$Res, _$OrdersStateImpl>
    implements _$$OrdersStateImplCopyWith<$Res> {
  __$$OrdersStateImplCopyWithImpl(
      _$OrdersStateImpl _value, $Res Function(_$OrdersStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrdersState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? orders = null,
    Object? ordersByStatus = null,
    Object? ordersCount = null,
  }) {
    return _then(_$OrdersStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as OrderStatus,
      orders: null == orders
          ? _value._orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<OrderModel>,
      ordersByStatus: null == ordersByStatus
          ? _value._ordersByStatus
          : ordersByStatus // ignore: cast_nullable_to_non_nullable
              as Map<OrderStatus, List<OrderModel>>,
      ordersCount: null == ordersCount
          ? _value._ordersCount
          : ordersCount // ignore: cast_nullable_to_non_nullable
              as Map<OrderStatus, int>,
    ));
  }
}

/// @nodoc

class _$OrdersStateImpl implements _OrdersState {
  const _$OrdersStateImpl(
      {this.status = OrderStatus.ordered,
      final List<OrderModel> orders = const [],
      final Map<OrderStatus, List<OrderModel>> ordersByStatus = const {},
      final Map<OrderStatus, int> ordersCount = const {}})
      : _orders = orders,
        _ordersByStatus = ordersByStatus,
        _ordersCount = ordersCount;

  @override
  @JsonKey()
  final OrderStatus status;
  final List<OrderModel> _orders;
  @override
  @JsonKey()
  List<OrderModel> get orders {
    if (_orders is EqualUnmodifiableListView) return _orders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orders);
  }

  final Map<OrderStatus, List<OrderModel>> _ordersByStatus;
  @override
  @JsonKey()
  Map<OrderStatus, List<OrderModel>> get ordersByStatus {
    if (_ordersByStatus is EqualUnmodifiableMapView) return _ordersByStatus;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_ordersByStatus);
  }

  final Map<OrderStatus, int> _ordersCount;
  @override
  @JsonKey()
  Map<OrderStatus, int> get ordersCount {
    if (_ordersCount is EqualUnmodifiableMapView) return _ordersCount;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_ordersCount);
  }

  @override
  String toString() {
    return 'OrdersState(status: $status, orders: $orders, ordersByStatus: $ordersByStatus, ordersCount: $ordersCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrdersStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._orders, _orders) &&
            const DeepCollectionEquality()
                .equals(other._ordersByStatus, _ordersByStatus) &&
            const DeepCollectionEquality()
                .equals(other._ordersCount, _ordersCount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(_orders),
      const DeepCollectionEquality().hash(_ordersByStatus),
      const DeepCollectionEquality().hash(_ordersCount));

  /// Create a copy of OrdersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrdersStateImplCopyWith<_$OrdersStateImpl> get copyWith =>
      __$$OrdersStateImplCopyWithImpl<_$OrdersStateImpl>(this, _$identity);
}

abstract class _OrdersState implements OrdersState {
  const factory _OrdersState(
      {final OrderStatus status,
      final List<OrderModel> orders,
      final Map<OrderStatus, List<OrderModel>> ordersByStatus,
      final Map<OrderStatus, int> ordersCount}) = _$OrdersStateImpl;

  @override
  OrderStatus get status;
  @override
  List<OrderModel> get orders;
  @override
  Map<OrderStatus, List<OrderModel>> get ordersByStatus;
  @override
  Map<OrderStatus, int> get ordersCount;

  /// Create a copy of OrdersState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrdersStateImplCopyWith<_$OrdersStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
