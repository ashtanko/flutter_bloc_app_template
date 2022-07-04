import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc_app_template/generated/l10n.dart';
import 'package:flutter_bloc_app_template/index.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';

extension on WidgetTester {
  Future<void> pumpScreen() {
    return pumpWidget(
      const MaterialApp(
        localizationsDelegates: [
          AppLocalizationDelegate(),
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate
        ],
        locale: Locale('en'),
        home: WidgetListScreen(),
      ),
    );
  }
}

void main() {
  group('Widget List View Tests', () {
    testWidgets('render buttons', (tester) async {
      await tester.pumpScreen();
      await tester.pump();
      for (var i = 0; i < 5; i++) {
        await tester.pump(const Duration(seconds: 1));
      }
      expect(find.byType(CachedNetworkImage), findsNWidgets(3));
      expect(find.byType(Icon), findsNWidgets(5));
    });
  });
}
