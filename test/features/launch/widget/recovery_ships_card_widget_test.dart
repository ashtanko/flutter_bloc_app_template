import 'package:flutter/material.dart';
import 'package:flutter_bloc_app_template/features/launch/widget/recovery_ships_card_widget.dart';
import 'package:flutter_bloc_app_template/generated/l10n.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../bloc/utils.dart';

void main() {
  testWidgets('renders nothing when ships list is empty', (tester) async {
    await tester.pumpLocalizedWidget(
      child: const RecoveryShipsCardWidget(ships: []),
      locale: const Locale('en'),
    );
    await tester.pump();

    expect(find.byType(SizedBox), findsOne);
    expect(find.byType(Card), findsNothing);
  });

  testWidgets('renders recovery ships correctly', (tester) async {
    final ships = ['GO Ms. Tree', 'GO Ms. Chief', 'GO Ms. Independence'];

    await tester.pumpLocalizedWidget(
      child: RecoveryShipsCardWidget(ships: ships),
      locale: const Locale('en'),
    );
    await tester.pump();

    // Check the section title
    expect(find.text(S.current.recoveryShips), findsOneWidget);

    // Check each ship name
    for (final ship in ships) {
      expect(find.text(ship), findsOneWidget);
    }

    // Check that the icons are present
    expect(find.byIcon(Icons.directions_boat), findsOneWidget);
    expect(find.byIcon(Icons.anchor), findsNWidgets(ships.length));
  });

  testWidgets('renders correctly with one ship', (tester) async {
    final ships = ['GO Ms. Tree'];

    await tester.pumpLocalizedWidget(
      child: RecoveryShipsCardWidget(ships: ships),
      locale: const Locale('en'),
    );
    await tester.pump();

    expect(find.text(S.current.recoveryShips), findsOneWidget);
    expect(find.text('GO Ms. Tree'), findsOneWidget);
    expect(find.byIcon(Icons.directions_boat), findsOneWidget);
    expect(find.byIcon(Icons.anchor), findsOneWidget);
  });
}
