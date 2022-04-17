import 'package:flutter/material.dart';
import 'package:flutter_bloc_app_template/index.dart';

class ItemAvatar extends StatelessWidget {
  const ItemAvatar({
    Key? key,
    required this.message,
  }) : super(key: key);

  final Email message;

  @override
  Widget build(BuildContext context) {
    return message.image.isNotEmpty
        ? CircleAvatar(backgroundImage: NetworkImage(message.image))
        : NameAvatar(name: message.getFormattedName());
  }
}
