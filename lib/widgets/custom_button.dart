import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    this.color,
    this.onPressed,
    this.icon,
    this.title,
    this.borderRadius = 5.0,
    this.textStyle,
    this.iconPadding = 5.0,
    this.isRounded = false,
    this.side = BorderSide.none,
    this.height,
    this.width,
  }) : super(key: key);
  final Color? color;
  final VoidCallback? onPressed;
  final Widget? icon;
  final String? title;
  final double borderRadius;
  final TextStyle? textStyle;
  final bool isRounded;
  final double? iconPadding;
  final BorderSide side;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final buttonTheme = ButtonTheme.of(context);

    return SizedBox(
      height: height,
      width: width,
      child: RawMaterialButton(
        fillColor: onPressed == null
            ? theme.disabledColor
            : color ?? theme.colorScheme.primary,
        elevation: 0,
        focusElevation: 0,
        hoverElevation: 0,
        highlightElevation: 0,
        onPressed: onPressed,
        shape: buttonTheme
            .copyWith(
              shape: isRounded
                  ? RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        isRounded ? borderRadius : 0,
                      ),
                      side: side,
                    )
                  : null,
            )
            .shape,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            if (icon != null) icon!,
            if (icon != null && title != null && title?.isNotEmpty == true)
              SizedBox(
                width: iconPadding,
              ),
            if (title != null)
              Flexible(
                child: Text(
                  title!,
                  style: textStyle ?? theme.textTheme.labelLarge,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  softWrap: false,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
