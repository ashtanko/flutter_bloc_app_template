import 'package:flutter/material.dart';
import 'package:flutter_bloc_app_template/app/localization.dart';
import 'package:flutter_bloc_app_template/features/cores/utils/core_utils.dart';
import 'package:flutter_bloc_app_template/generated/l10n.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:intl/intl.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group('Utils', () {
    testWidgets('getStatusColor returns correct color for known statuses',
        (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          localizationsDelegates: appLocalizationsDelegates,
          supportedLocales: appSupportedLocales,
          home: Builder(
            builder: (context) {
              final loc = S.of(context);

              expect(getStatusColor(context, loc.core_status_active),
                  Colors.green);
              expect(getStatusColor(context, loc.core_status_lost), Colors.red);
              expect(getStatusColor(context, loc.core_status_inactive),
                  Colors.orange);
              expect(getStatusColor(context, loc.core_status_unknown),
                  Colors.grey);

              return Container();
            },
          ),
        ),
      );
    });

    testWidgets('getStatusColor returns blue for null or unknown',
        (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          localizationsDelegates: appLocalizationsDelegates,
          supportedLocales: appSupportedLocales,
          home: Builder(
            builder: (context) {
              expect(getStatusColor(context, null), Colors.blue);
              expect(getStatusColor(context, 'not_a_status'), Colors.blue);
              return Container();
            },
          ),
        ),
      );
    });

    testWidgets('formatFirstLaunch returns formatted date', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          localizationsDelegates: appLocalizationsDelegates,
          supportedLocales: appSupportedLocales,
          home: Builder(
            builder: (context) {
              final isoDate = '2021-09-09T12:00:00Z';
              final result = formatFirstLaunch(context, isoDate);

              final expected = '${S.of(context).firstLaunch}:'
                  ' ${DateFormat.yMMMd().format(DateTime.parse(isoDate))}';

              expect(result, expected);
              return Container();
            },
          ),
        ),
      );
    });

    testWidgets('formatFirstLaunch returns empty for null or empty',
        (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          localizationsDelegates: appLocalizationsDelegates,
          supportedLocales: appSupportedLocales,
          home: Builder(
            builder: (context) {
              expect(formatFirstLaunch(context, null), '');
              expect(formatFirstLaunch(context, ''), '');
              return Container();
            },
          ),
        ),
      );
    });
  });
}
