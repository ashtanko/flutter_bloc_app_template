import 'package:flutter_bloc_app_template/widgets/loading_content.dart';
import 'package:material_ui/material_ui.dart';

class CoreLoadingContent extends StatelessWidget {
  const CoreLoadingContent({super.key});

  @override
  Widget build(BuildContext context) {
    return const SliverFillRemaining(child: LoadingContent());
  }
}
