import 'package:flutter/material.dart';
import 'package:flutter_bloc_app_template/index.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../bloc/utils.dart';
import 'email_list_view_test.dart';

void main() {
  late EmailListBloc emailListBloc;

  setUp(() {
    emailListBloc = MockEmailListBloc();
  });

  Future<void> expectWithLocale(
    WidgetTester tester, {
    required String expectedText,
    String locale = 'en',
  }) async {
    when(() => emailListBloc.state).thenReturn(EmailListInitial());

    await tester.pumpLocalizedWidgetWithBloc<EmailListBloc>(
      bloc: emailListBloc,
      child: const EmailListScreen(),
      locale: Locale(locale),
    );

    await tester.pump();
    expect(find.text(expectedText), findsOneWidget);
  }

  group('Email List Screen Tests', () {
    <String, String>{
      'en': 'Emails',
      'pt': 'E-mails',
      'de': 'E-Mails',
    }.forEach((locale, expectedTitle) async {
      testWidgets('renders "$expectedTitle" for locale "$locale"',
          (tester) async {
        await expectWithLocale(tester,
            locale: locale, expectedText: expectedTitle);
      });
    });
  });
}
