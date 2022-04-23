import 'package:flutter/material.dart';
import 'package:flutter_bloc_app_template/index.dart';
import 'package:gap/gap.dart';

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
