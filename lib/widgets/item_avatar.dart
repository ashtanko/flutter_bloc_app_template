import 'package:flutter_bloc_app_template/index.dart';
import 'package:material_ui/material_ui.dart';

class ItemAvatar extends StatelessWidget {
  const ItemAvatar({
    super.key,
    required this.imageUrl,
    required this.shortenUserName,
  });

  final String imageUrl;
  final String shortenUserName;

  @override
  Widget build(BuildContext context) => imageUrl.isNotEmpty
      ? CircleAvatar(backgroundImage: NetworkImage(imageUrl))
      : NameAvatar(name: shortenUserName);
}
