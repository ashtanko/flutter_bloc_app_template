import 'package:flutter/material.dart';
import 'package:flutter_bloc_app_template/app/localization.dart';
import 'package:flutter_bloc_app_template/features/cores/model/core_filter_status.dart';
import 'package:flutter_bloc_app_template/features/cores/utils/cores_ext.dart';
import 'package:flutter_bloc_app_template/generated/l10n.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group('CoreFilterStatusX.title', () {
    testWidgets('returns correct localized titles', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          localizationsDelegates: appLocalizationsDelegates,
          supportedLocales: appSupportedLocales,
          home: Builder(
            builder: (context) {
              expect(CoreFilterStatus.all.title(context),
                  S.of(context).core_filter_status_all);
              expect(CoreFilterStatus.active.title(context),
                  S.of(context).core_filter_status_active);
              expect(CoreFilterStatus.lost.title(context),
                  S.of(context).core_filter_status_lost);
              expect(CoreFilterStatus.inactive.title(context),
                  S.of(context).core_filter_status_inactive);
              expect(CoreFilterStatus.unknown.title(context),
                  S.of(context).core_filter_status_unknown);

              return Container();
            },
          ),
        ),
      );
    });
  });

  group('CoreFilterStatusStringX.toStatus', () {
    test('converts string to CoreFilterStatus correctly', () {
      expect('active'.toStatus(), CoreFilterStatus.active);
      expect('lost'.toStatus(), CoreFilterStatus.lost);
      expect('inactive'.toStatus(), CoreFilterStatus.inactive);
      expect('unknown'.toStatus(), CoreFilterStatus.unknown);
      expect('all'.toStatus(), CoreFilterStatus.unknown);
      expect(null.toStatus(), CoreFilterStatus.unknown);
      expect('random'.toStatus(), CoreFilterStatus.unknown);
      expect('ACTIVE'.toStatus(),
          CoreFilterStatus.active); // test case-insensitive
    });
  });
}
