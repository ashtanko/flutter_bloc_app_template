import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc_app_template/widgets/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:network_image_mock/network_image_mock.dart';

void main() {
  setUpAll(() => HttpOverrides.global = null);

  testWidgets('ItemAvatar with imageUrl displays CircleAvatar',
      (WidgetTester tester) async {
    await mockNetworkImagesFor(
      () => tester.pumpWidget(
        const MaterialApp(
          home: ItemAvatar(
            imageUrl: 'https://example.com/image.png',
            shortenUserName: '',
          ),
        ),
      ),
    );

    expect(find.byType(CircleAvatar), findsOneWidget);
    expect(find.byType(NameAvatar), findsNothing);
  });

  testWidgets('ItemAvatar without imageUrl displays NameAvatar',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: ItemAvatar(imageUrl: '', shortenUserName: 'User'),
      ),
    );

    expect(find.byType(CircleAvatar), findsNothing);
    expect(find.byType(NameAvatar), findsOneWidget);
  });
}
