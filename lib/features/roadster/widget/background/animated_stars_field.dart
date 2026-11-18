import 'package:flutter_bloc_app_template/features/roadster/widget/animated_star_widget.dart';
import 'package:material_ui/material_ui.dart';

class AnimatedStarsField extends StatelessWidget {
  const AnimatedStarsField({
    super.key,
    required this.pulseController,
  });

  final AnimationController pulseController;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: List.generate(
        50,
        (index) => AnimatedStarWidget(
          index: index,
          pulseController: pulseController,
        ),
      ),
    );
  }
}
