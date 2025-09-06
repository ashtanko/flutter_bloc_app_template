import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

class InfoItem extends Equatable {
  InfoItem(this.label, this.value, this.key);

  final String label;
  final String value;
  final Key key;

  @override
  List<Object?> get props => [
        label,
        value,
        key,
      ];
}
