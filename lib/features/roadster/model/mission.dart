import 'package:equatable/equatable.dart';

class Mission extends Equatable {
  Mission({required this.name, required this.isPrimary});

  final String name;
  final bool isPrimary;

  @override
  List<Object?> get props => [name, isPrimary];
}
