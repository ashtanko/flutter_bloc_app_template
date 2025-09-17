import 'package:flutter/material.dart';
import 'package:flutter_bloc_app_template/features/launch/widget/payload_card_widget.dart';
import 'package:flutter_bloc_app_template/generated/l10n.dart';
import 'package:flutter_bloc_app_template/models/payload/payload_resource.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../bloc/utils.dart';

void main() {
  late PayloadResource payload;

  setUp(() {
    payload = const PayloadResource(
      payloadId: 'P123',
      payloadType: 'Satellite',
      payloadMassKg: 500,
      orbit: 'LEO',
      manufacturer: 'SpaceX',
      nationality: 'USA',
      customers: ['NASA', 'ESA'],
    );
  });

  testWidgets('renders title and subtitle correctly', (tester) async {
    await tester.pumpLocalizedWidget(
      child: PayloadCardWidget(
        payload: payload,
      ),
      locale: const Locale('en'),
    );

    await tester.pump();
    expect(find.text(S.current.payloadTitle), findsOneWidget);
    expect(find.text('${payload.payloadId} • ${payload.payloadType}'),
        findsOneWidget);
  });

  testWidgets('renders all info items', (tester) async {
    await tester.pumpLocalizedWidget(
      child: PayloadCardWidget(
        payload: payload,
      ),
      locale: const Locale('en'),
    );

    await tester.pump();
    // Expand the tile
    await tester.tap(find.text(S.current.payloadTitle));
    await tester.pumpAndSettle();

    expect(find.text(payload.payloadId!), findsOneWidget);
    expect(find.text(payload.payloadType!), findsOneWidget);
    expect(find.text('${payload.payloadMassKg} kg'), findsOneWidget);
    expect(find.text(payload.orbit!), findsOneWidget);
    expect(find.text(payload.manufacturer!), findsOneWidget);
    expect(find.text(payload.nationality!), findsOneWidget);
    expect(find.text(S.current.payloadTitle), findsOneWidget);
  });

  testWidgets('renders customers correctly', (tester) async {
    await tester.pumpLocalizedWidget(
      child: PayloadCardWidget(
        payload: payload,
      ),
      locale: const Locale('en'),
    );

    await tester.pump();

    // Expand the tile
    await tester.tap(find.text(S.current.payloadTitle));
    await tester.pumpAndSettle();

    for (final customer in payload.customers!) {
      expect(find.text(customer), findsOneWidget);
    }
  });

  testWidgets('renders correctly without optional fields', (tester) async {
    final emptyPayload =
        const PayloadResource(payloadId: 'P456', payloadType: 'Probe');

    await tester.pumpLocalizedWidget(
      child: PayloadCardWidget(
        payload: emptyPayload,
      ),
      locale: const Locale('en'),
    );

    await tester.pump();

    await tester.tap(find.text(S.current.payloadTitle));
    await tester.pumpAndSettle();

    expect(find.text(emptyPayload.payloadId!), findsOneWidget);
    expect(find.text(emptyPayload.payloadType!), findsOneWidget);
    expect(find.byKey(const Key('info_id')), findsOneWidget);
    expect(find.byKey(const Key('info_type')), findsOneWidget);
  });
}
