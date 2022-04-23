import 'package:flutter/material.dart';
import 'package:flutter_bloc_app_template/index.dart';

const kDialogContentPadding =
    EdgeInsets.symmetric(horizontal: Paddings.kDialogContentPadding);

Future<T?> showBottomSheetDialog<T>({
  required BuildContext context,
  required List<Widget> children,
  EdgeInsets padding = kDialogContentPadding,
}) {
  return showModalBottomSheet(
    context: context,
    backgroundColor: Theme.of(context).dialogBackgroundColor,
    isDismissible: true,
    barrierColor: Colors.black54,
    enableDrag: true,
    builder: (context) => _RoundDialog.bottom(
      children: children,
      padding: padding,
    ),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(RadiusSize.kDialogCornerRadius),
        topRight: Radius.circular(RadiusSize.kDialogCornerRadius),
      ),
    ),
  );
}

class _RoundDialog extends StatelessWidget {
  factory _RoundDialog.bottom({
    Key? key,
    required List<Widget> children,
    EdgeInsets? padding,
  }) {
    return _RoundDialog._(
      key: key,
      children: children,
      padding: padding,
    );
  }

  const _RoundDialog._({
    Key? key,
    required this.children,
    this.padding,
  }) : super(key: key);

  final List<Widget> children;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      minimum: const EdgeInsets.only(bottom: 32),
      bottom: false,
      child: Padding(
        padding: const EdgeInsets.only(top: 15),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: Separator.spaceChildren(
            space: Space.superLarge,
            children: [
              BottomSheetDialogIcon(),
              Flexible(
                child: SingleChildScrollView(
                  padding: padding,
                  child: ListBody(
                    children: children,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
