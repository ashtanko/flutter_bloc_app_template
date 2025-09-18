import 'package:flutter/material.dart';
import 'package:flutter_bloc_app_template/features/launch/widget/feature_chip_widget.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('renders active feature chip correctly', (tester) async {
    const label = 'Reusable';
    const active = true;

    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: FeatureChipWidget(label: label, active: active),
        ),
      ),
    );
    await tester.pumpAndSettle();

    // Verify label
    expect(find.text(label), findsOneWidget);

    // Verify active icon
    final icon = tester.widget<Icon>(find.byType(Icon));
    expect(icon.icon, Icons.check_circle);

    // Verify border color approximately matches active
    final container = tester.widget<Container>(find.byType(Container).first);
    final decoration = container.decoration as BoxDecoration;
    final borderColor = (decoration.border as Border).top.color;

    // Use the same theme primary color with alpha as in widget
    final theme = ThemeData().colorScheme;
    final expectedColor = theme.primary.withValues(alpha: 0.3);
    expect(borderColor, equals(expectedColor));
  });

  testWidgets('renders inactive feature chip correctly', (tester) async {
    const label = 'Non-Reusable';
    const active = false;

    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: FeatureChipWidget(label: label, active: active),
        ),
      ),
    );
    await tester.pumpAndSettle();

    // Verify label
    expect(find.text(label), findsOneWidget);

    // Verify inactive icon
    final icon = tester.widget<Icon>(find.byType(Icon));
    expect(icon.icon, Icons.cancel);
  });
}
