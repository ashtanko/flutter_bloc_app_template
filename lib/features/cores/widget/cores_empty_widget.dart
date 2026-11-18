import 'package:flutter_bloc_app_template/generated/l10n.dart';
import 'package:material_ui/material_ui.dart';

class CoresEmptyWidget extends StatelessWidget {
  const CoresEmptyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final loc = S.of(context);
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
              loc.emptyList,
              style: const TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
