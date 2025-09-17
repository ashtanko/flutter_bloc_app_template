import 'package:flutter/material.dart';
import 'package:flutter_bloc_app_template/index.dart';

class ErrorContent extends StatelessWidget {
  const ErrorContent({
    super.key,
    this.onTryAgainClick = _noop,
  });

  final VoidCallback onTryAgainClick;

  static void _noop() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: onTryAgainClick,
          child: Text(
            context.tryAgainButton,
          ),
        ),
      ),
    );
  }
}
