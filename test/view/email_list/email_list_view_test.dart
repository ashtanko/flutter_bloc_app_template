import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_app_template/generated/l10n.dart';
import 'package:flutter_bloc_app_template/index.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:network_image_mock/network_image_mock.dart';

import '../../helpers/data.dart';

class MockEmailListBloc extends MockBloc<EmailListEvent, EmailListState>
    implements EmailListBloc {}

class EmailListUnknownState extends EmailListState {
  @override
  List<Object?> get props => [];
}

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

  group('Email List View Tests', () {
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

    testWidgets(
        'renders Empty list text '
        'when email list state is unknown', (tester) async {
      when(() => emailListBloc.state).thenReturn(EmailListUnknownState());
      await tester.pumpEmailListList(emailListBloc);
      await tester.pumpAndSettle();

      expect(find.byType(EmptyWidget), findsNWidgets(1));
    });

    testWidgets('renders 1 item', (tester) async {
      when(() => emailListBloc.state).thenReturn(
        EmailListLoaded(
          [
            Email(
              sender: 'Ralph Edwards',
              subject: 'The results to our user testing',
              messagePreview: 'What is the progress on that task?',
              isFavorite: false,
              date: DateTime.parse('2022-04-10 20:18:04Z'),
              image: '',
              attachments: [Attachment(AttachmentType.doc, 'doc')],
            ),
          ],
        ),
      );
      await tester.pumpEmailListList(emailListBloc);
      await tester.pumpAndSettle();

      expect(find.byType(EmailListItem), findsNWidgets(1));
    });

    testWidgets('renders item with attachment', (tester) async {
      final _mockEmails = [
        Email(
          sender: 'Ralph Edwards',
          subject: 'The results to our user testing',
          messagePreview: 'What is the progress on that task?',
          isFavorite: false,
          date: DateTime.parse('2022-04-10 20:18:04Z'),
          image: '',
          attachments: [Attachment(AttachmentType.doc, 'doc')],
        )
      ];

      when(() => emailListBloc.state).thenReturn(EmailListLoaded(_mockEmails));
      await tester.pumpEmailListList(emailListBloc);
      await tester.pumpAndSettle();

      expect(find.byType(EmailListItem), findsNWidgets(1));
      expect(find.byType(AttachmentIcon), findsNWidgets(1));
    });

    testWidgets('renders items with different attachment type', (tester) async {
      final _mockEmails = [
        Email(
          sender: 'Ralph Edwards',
          subject: 'The results to our user testing',
          messagePreview: 'What is the progress on that task?',
          isFavorite: false,
          date: DateTime.parse('2022-04-10 20:18:04Z'),
          image: '',
          attachments: [Attachment(AttachmentType.doc, 'doc')],
        ),
        Email(
          sender: 'Ralph Edwards',
          subject: 'The results to our user testing',
          messagePreview: 'What is the progress on that task?',
          isFavorite: false,
          date: DateTime.parse('2022-04-10 20:18:04Z'),
          image: '',
          attachments: [
            Attachment(AttachmentType.pdf, 'pdf'),
          ],
        ),
        Email(
          sender: 'Ralph Edwards',
          subject: 'The results to our user testing',
          messagePreview: 'What is the progress on that task?',
          isFavorite: false,
          date: DateTime.parse('2022-04-10 20:18:04Z'),
          image: '',
          attachments: [
            Attachment(AttachmentType.doc, 'doc'),
            Attachment(AttachmentType.pdf, 'pdf'),
          ],
        )
      ];

      when(() => emailListBloc.state).thenReturn(EmailListLoaded(_mockEmails));
      await tester.pumpEmailListList(emailListBloc);
      await tester.pumpAndSettle();

      expect(find.byType(EmailListItem), findsNWidgets(3));
      expect(find.byType(AttachmentIcon), findsNWidgets(4));
    });

    testWidgets('renders items with attachment', (tester) async {
      await mockNetworkImagesFor(() async {
        when(() => emailListBloc.state).thenReturn(EmailListLoaded(mockEmails));
        await tester.pumpEmailListList(emailListBloc);
        await tester.pumpAndSettle();
      });

      expect(find.byType(EmailListItem), findsNWidgets(6));
    });

    testWidgets('renders error text', (tester) async {
      when(() => emailListBloc.state).thenReturn(EmailListLoadFailure());
      await tester.pumpEmailListList(emailListBloc);
      await tester.pumpAndSettle();

      expect(find.text('Error'), findsOneWidget);
    });
  });
}
