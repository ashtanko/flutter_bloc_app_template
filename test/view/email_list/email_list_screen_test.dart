import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_app_template/generated/l10n.dart';
import 'package:flutter_bloc_app_template/index.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import 'email_list_view_test.dart';

extension on WidgetTester {
  Future<void> pumpEmailList(EmailListBloc emailListBloc) {
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
          child: const EmailListScreen(),
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

  group('Email List Screen Tests', () {
    testWidgets('renders Messages title', (tester) async {
      when(() => emailListBloc.state).thenReturn(EmailListInitial());
      await tester.pumpEmailList(emailListBloc);
      await tester.pump();

      expect(find.text('Messages'), findsOneWidget);
    });
  });
}
