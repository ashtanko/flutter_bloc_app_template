import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

/// Default space values that can be used on a [Separator] generated object.
class Space {
  static const superLarge = 24.0;
  static const large = 16.0;

  static const medium = 12.0;
  static const mediumSmall = 8.0;

  static const small = 6.0;
  static const superSmall = 4.0;
}

class Height {}

/// This class is a collection of various already-defined
/// separators, such as spacers and dividers.
class Separator {
  /// Default gap spacer. Defaults to [Space.medium].
  static Widget spacer([double space = Space.medium]) {
    return Gap(space);
  }

  /// Adds a [Gap] widget between all children inside the [children] list.
  static List<Widget> spaceChildren({
    double space = Space.medium,
    required List<Widget> children,
  }) {
    return children.separate(space);
  }

  /// Divider with height 0, as thin as a piece of paper.
  static Widget divider({
    double indent = 0,
    double? endIndent,
    double? thickness,
  }) {
    return Divider(height: 0, indent: indent);
  }

  /// Empty widget, there's nothing more to say.
  static Widget none() {
    return const Gap(0);
  }
}

extension ListGutter on List<Widget> {
  /// Adds a [Gap] widget between all children inside the list.
  List<Widget> separate([double space = Space.medium]) => length <= 1
      ? this
      : sublist(1).fold(
          [first],
          (r, element) => [...r, Separator.spacer(space), element],
        );
}
