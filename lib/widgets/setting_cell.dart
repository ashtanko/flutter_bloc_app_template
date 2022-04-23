import 'package:flutter/material.dart';
import 'package:flutter_bloc_app_template/index.dart';

class SettingCell extends StatelessWidget {
  const SettingCell({
    Key? key,
    required this.leading,
    required this.title,
    this.onTap,
    this.contentPadding,
    this.dense = false,
  }) : super(key: key);

  factory SettingCell.icon({
    Key? key,
    required IconData icon,
    required String title,
    VoidCallback? onTap,
    EdgeInsets? contentPadding,
    bool dense = false,
  }) {
    return SettingCell(
      key: key,
      leading: Icon(icon, size: IconSizes.settingsItem),
      title: title,
      onTap: onTap,
      contentPadding: contentPadding,
      dense: dense,
    );
  }

  final Widget leading;
  final String title;
  final VoidCallback? onTap;
  final EdgeInsets? contentPadding;
  final bool dense;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: leading,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: Theme.of(context).textTheme.subtitle1?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
        ],
      ),
      trailing: const Icon(AppIcons.chevronRight),
      contentPadding: contentPadding,
      onTap: onTap,
      dense: dense,
    );
  }
}
