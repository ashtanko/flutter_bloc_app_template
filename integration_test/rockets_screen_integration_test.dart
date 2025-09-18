import 'package:flutter/material.dart';
import 'package:flutter_bloc_app_template/features/rockets/bloc/rockets_bloc.dart';
import 'package:flutter_bloc_app_template/features/rockets/rockets_screen.dart';
import 'package:flutter_bloc_app_template/features/rockets/widget/rocket_item/rocket_item.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:mocktail/mocktail.dart';

import '../test/bloc/utils.dart';
import '../test/features/rockets/rockets_screen_test.dart';
import '../test/repository/rocket_repository_test.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  late RocketsBloc rocketsBloc;

  setUp(() {
    rocketsBloc = MockRocketsBloc();
  });

  group('Rockets Screen Tests', () {
    testWidgets(
        'renders CircularProgressIndicator '
        'when rocket list state is initial', (tester) async {
      when(() => rocketsBloc.state).thenReturn(const RocketsLoadingState());

      await tester.pumpLocalizedWidgetWithBloc<RocketsBloc>(
        bloc: rocketsBloc,
        child: const RocketsBlocContent(),
        locale: const Locale('en'),
      );

      await tester.pump();

      expect(find.byType(CircularProgressIndicator), findsOneWidget);
    });

    testWidgets(
        'renders Empty list text '
        'when rocket list state is success but with 0 items', (tester) async {
      when(() => rocketsBloc.state).thenReturn(const RocketsEmptyState());
      await tester.pumpLocalizedWidgetWithBloc<RocketsBloc>(
        bloc: rocketsBloc,
        child: const RocketsBlocContent(),
        locale: const Locale('en'),
      );
      await tester.pumpAndSettle();

      expect(find.text('Empty list'), findsOneWidget);
    });

    testWidgets('renders 1 item', (tester) async {
      when(() => rocketsBloc.state).thenReturn(
        RocketsSuccessState(
          rockets: [
            getRocketResource(),
          ],
        ),
      );
      await tester.pumpLocalizedWidgetWithBloc<RocketsBloc>(
        bloc: rocketsBloc,
        child: const RocketsBlocContent(),
        locale: const Locale('en'),
      );
      await tester.pumpAndSettle();

      expect(find.byType(RocketItemWidget), findsNWidgets(1));
    });

    testWidgets('renders error text', (tester) async {
      when(() => rocketsBloc.state).thenReturn(const RocketsErrorState());
      await tester.pumpLocalizedWidgetWithBloc<RocketsBloc>(
        bloc: rocketsBloc,
        child: const RocketsBlocContent(),
        locale: const Locale('en'),
      );
      await tester.pumpAndSettle();

      expect(find.text('Try Again'), findsOneWidget);
    });
  });
}
