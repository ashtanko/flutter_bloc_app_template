import 'package:flutter/material.dart';

class NewsItemView extends StatelessWidget {
  const NewsItemView({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.resource,
    required this.date,
    required this.viewsCount,
    this.onShareTap,
    this.onMenuTap,
  });

  final String imageUrl;
  final String title;
  final String resource;
  final String date;
  final String viewsCount;
  final GestureTapCallback? onShareTap;
  final GestureTapCallback? onMenuTap;

  @override
  Widget build(BuildContext context) {

    return InkWell(onTap: () {}, child: const Placeholder());
  }
}
