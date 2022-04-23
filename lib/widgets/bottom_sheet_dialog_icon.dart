import 'package:flutter/material.dart';
import 'package:flutter_bloc_app_template/constants/index.dart';
import 'package:flutter_bloc_app_template/generated/colors.gen.dart';

class BottomSheetDialogIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: UiSize.bottomSheetTopIconWidth,
      height: UiSize.bottomSheetTopIconHeight,
      child: Card(
        shadowColor: Colors.transparent,
        color: ColorName.bottomSheetTopIconColor, //Center
      ), //Card
    );
  }
}
