import 'package:flutter/material.dart';
import 'package:flutter_bloc_app_template/generated/l10n.dart';

class CoresNotFoundWidget extends StatelessWidget {
  const CoresNotFoundWidget({super.key, required this.searchQuery});

  final String searchQuery;

  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.inbox_outlined,
              size: 64,
              color: Colors.grey,
            ),
            const SizedBox(height: 16),
            Text(
              S.of(context).noCoresFound(searchQuery),
              style: const TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
