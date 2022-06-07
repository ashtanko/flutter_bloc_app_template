import 'package:flutter/material.dart';
import 'package:flutter_bloc_app_template/index.dart';

class FavoriteIcon extends StatelessWidget {
  const FavoriteIcon({Key? key, required this.message, this.onTap})
      : super(key: key);

  final Email message;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return message.isFavorite
        ? IconButton(onPressed: onTap, icon: AppIcons.attachmentFavoriteActive)
        : IconButton(onPressed: onTap, icon: AppIcons.attachmentFavorite);
  }
}
