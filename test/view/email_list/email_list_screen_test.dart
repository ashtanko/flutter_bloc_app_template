import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_app_template/generated/l10n.dart';
import 'package:flutter_bloc_app_template/index.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../helpers/data.dart';

class MockEmailListBloc extends MockBloc<EmailListEvent, EmailListState>
    implements EmailListBloc {}

extension on WidgetTester {
  Future<void> pumpEmailListList(EmailListBloc emailListBloc) {
    return pumpWidget(
      MaterialApp(
        localizationsDelegates: [
          const AppLocalizationDelegate(),
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate
        ],
        locale: const Locale('en'),
        home: BlocProvider.value(
          value: emailListBloc,
          child: EmailListView(),
        ),
      ),
    );
  }
}

void main() {
  late EmailListBloc emailListBloc;

  setUp(() {
    emailListBloc = MockEmailListBloc();
  });

  group('EmailList', () {
    testWidgets(
        'renders CircularProgressIndicator '
        'when email list state is initial', (tester) async {
      when(() => emailListBloc.state).thenReturn(EmailListLoading());

      await tester.pumpEmailListList(emailListBloc);
      await tester.pump();

      expect(find.byType(CircularProgressIndicator), findsOneWidget);
    });

    testWidgets(
        'renders CircularProgressIndicator '
        'when email list state is loading', (tester) async {
      when(() => emailListBloc.state).thenReturn(EmailListLoading());

      await tester.pumpEmailListList(emailListBloc);
      await tester.pump();

      expect(find.byType(CircularProgressIndicator), findsOneWidget);
    });

    testWidgets(
        'renders Empty list text '
        'when email list state is success but with 0 items', (tester) async {
      when(() => emailListBloc.state).thenReturn(EmailListEmpty());
      await tester.pumpEmailListList(emailListBloc);
      await tester.pumpAndSettle();

      expect(find.text('Empty list'), findsOneWidget);
    });

    testWidgets('renders 1 item', (tester) async {
      when(() => emailListBloc.state).thenReturn(EmailListLoaded(mockEmails));
      await tester.pumpEmailListList(emailListBloc);
      await tester.pumpAndSettle();

      expect(find.byType(EmailListItem), findsNWidgets(1));
    });

    testWidgets('renders error text', (tester) async {
      when(() => emailListBloc.state).thenReturn(EmailListLoadFailure());
      await tester.pumpEmailListList(emailListBloc);
      await tester.pumpAndSettle();

      expect(find.text('Error'), findsOneWidget);
    });
  });
}
