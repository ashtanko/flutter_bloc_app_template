import 'package:flutter/material.dart';
import 'package:flutter_bloc_app_template/generated/l10n.dart';

class TrackLiveButton extends StatelessWidget {
  const TrackLiveButton({
    super.key,
    required this.fadeController,
    required this.onPressed,
  });

  final AnimationController fadeController;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 20,
      right: 20,
      child: ScaleTransition(
        scale: CurvedAnimation(
          parent: fadeController,
          curve: Curves.elasticOut,
        ),
        child: FloatingActionButton.extended(
          onPressed: onPressed,
          icon: const Icon(Icons.rocket_launch),
          label: Text(S.of(context).trackLive),
          backgroundColor: Theme.of(context).colorScheme.primary,
        ),
      ),
    );
  }
}