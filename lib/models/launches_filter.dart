import 'package:equatable/equatable.dart';

class OrderSortType {
  const OrderSortType._(this.value);

  final String value;

  static const OrderSortType asc = OrderSortType._('asc');
  static const OrderSortType desc = OrderSortType._('desc');
}

class LaunchesFilter extends Equatable {
  LaunchesFilter({this.year, this.success, this.order});

  final int? year;
  final bool? success;
  final OrderSortType? order;

  @override
  List<Object?> get props => [
        year,
        success,
        order,
      ];
}
