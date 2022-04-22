import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Space {
  static const superLarge = 24.0;
  static const large = 16.0;

  static const medium = 12.0;
  static const mediumSmall = 8.0;

  static const small = 6.0;
  static const superSmall = 4.0;
}

class Separator {
  static Widget spacer([double space = Space.medium]) {
    return Gap(space);
  }

  static List<Widget> spaceChildren({
    double space = Space.medium,
    required List<Widget> children,
  }) {
    return children.separate(space);
  }

  static Widget divider({
    double indent = 0,
    double? endIndent,
    double? thickness,
  }) {
    return Divider(height: 0, indent: indent);
  }

  static Widget none() {
    return const Gap(0);
  }
}

extension ListGutter on List<Widget> {
  List<Widget> separate([double space = Space.medium]) => length <= 1
      ? this
      : sublist(1).fold(
          [first],
          (r, element) => [...r, Separator.spacer(space), element],
        );
}
