import 'package:flutter/material.dart';
import 'package:flutter_bloc_app_template/features/launch/info_item.dart';

class InfoGridWidget extends StatelessWidget {
  const InfoGridWidget({super.key, required this.items});

  final List<InfoItem> items;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 16,
      runSpacing: 12,
      children: items
          .map(
            (item) => SizedBox(
              key: item.key,
              width: 150,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.label,
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey[600],
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    item.value,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          )
          .toList(),
    );
  }
}
