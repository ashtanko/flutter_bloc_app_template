import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc_app_template/features/cores/bloc/cores_bloc.dart';
import 'package:flutter_bloc_app_template/features/cores/cores_screen.dart';
import 'package:flutter_bloc_app_template/features/cores/widget/core_loading_content.dart';
import 'package:flutter_bloc_app_template/features/cores/widget/cores_empty_widget.dart';
import 'package:flutter_bloc_app_template/features/cores/widget/cores_error_widget.dart';
import 'package:flutter_bloc_app_template/features/cores/widget/cores_not_found_widget.dart';
import 'package:flutter_bloc_app_template/models/core/core_resource.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:mocktail/mocktail.dart';

import '../test/bloc/utils.dart';

class MockCoresBloc extends MockBloc<CoresEvent, CoresState>
    implements CoresBloc {}

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  late MockCoresBloc mockBloc;

  setUp(() {
    mockBloc = MockCoresBloc();
  });

  testWidgets('renders LoadingContent when state is CoresLoadingState',
      (tester) async {
    when(() => mockBloc.state).thenReturn(const CoresLoadingState());

    await tester.pumpLocalizedWidgetWithBloc<CoresBloc>(
      bloc: mockBloc,
      child: const CustomScrollView(
        slivers: [CoresBlocContent()],
      ),
      locale: const Locale('en'),
    );
    await tester.pump();

    expect(find.byType(CoreLoadingContent), findsOneWidget);
  });

  testWidgets('renders CoresListWidget when state is CoresSuccessState',
      (tester) async {
    final cores = <CoreResource>[
      const CoreResource(
        coreSerial: 'B1051',
        missions: [MissionResource(name: null, flight: 1)],
        status: 'active',
      ),
    ]; // provide mock cores
    when(() => mockBloc.state)
        .thenReturn(CoresSuccessState(filteredCores: cores));

    await tester.pumpLocalizedWidgetWithBloc<CoresBloc>(
      bloc: mockBloc,
      child: const CustomScrollView(
        slivers: [CoresBlocContent()],
      ),
      locale: const Locale('en'),
    );
    await tester.pumpAndSettle();

    expect(find.byType(CoresListWidget), findsOneWidget);
  });

  testWidgets('renders CoresErrorWidget when state is CoresErrorState',
      (tester) async {
    const errorMessage = 'Error occurred';
    when(() => mockBloc.state).thenReturn(const CoresErrorState(errorMessage));

    await tester.pumpLocalizedWidgetWithBloc<CoresBloc>(
      bloc: mockBloc,
      child: const CustomScrollView(
        slivers: [CoresBlocContent()],
      ),
      locale: const Locale('en'),
    );
    await tester.pumpAndSettle();

    expect(find.byType(CoresErrorWidget), findsOneWidget);
    //expect(find.text(errorMessage), findsOneWidget);
  });

  testWidgets('renders CoresEmptyWidget when state is CoresEmptyState',
      (tester) async {
    when(() => mockBloc.state).thenReturn(const CoresEmptyState());

    await tester.pumpLocalizedWidgetWithBloc<CoresBloc>(
      bloc: mockBloc,
      child: const CustomScrollView(
        slivers: [CoresBlocContent()],
      ),
      locale: const Locale('en'),
    );
    await tester.pumpAndSettle();

    expect(find.byType(CoresEmptyWidget), findsOneWidget);
  });

  testWidgets('renders CoresNotFoundWidget when state is CoresNotFoundState',
      (tester) async {
    const query = 'Falcon';
    when(() => mockBloc.state)
        .thenReturn(const CoresNotFoundState(searchQuery: query));

    await tester.pumpLocalizedWidgetWithBloc<CoresBloc>(
      bloc: mockBloc,
      child: const CustomScrollView(
        slivers: [CoresBlocContent()],
      ),
      locale: const Locale('en'),
    );
    await tester.pumpAndSettle();

    expect(find.byType(CoresNotFoundWidget), findsOneWidget);
    expect(find.textContaining(query), findsOneWidget);
  });
}
