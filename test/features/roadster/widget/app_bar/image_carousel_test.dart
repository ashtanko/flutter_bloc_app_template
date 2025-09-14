import 'package:flutter/material.dart';
import 'package:flutter_bloc_app_template/app/localization.dart';
import 'package:flutter_bloc_app_template/features/roadster/widget/app_bar/image_carousel.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:network_image_mock/network_image_mock.dart';

void main() {
  group('ImageCarousel', () {
    late PageController pageController;
    late List<String> mockImages;
    var pageChangedCallCount = 0;

    setUp(() {
      pageController = PageController(viewportFraction: 0.85);
      mockImages = ['image1.jpg', 'image2.jpg', 'image3.jpg'];
      pageChangedCallCount = 0;
    });

    tearDown(() {
      pageController.dispose();
    });

    testWidgets('should render page view with images',
        (WidgetTester tester) async {
      await mockNetworkImagesFor(
        () => tester.pumpWidget(
          MaterialApp(
            supportedLocales: appSupportedLocales,
            localizationsDelegates: appLocalizationsDelegates,
            home: ImageCarousel(
              images: mockImages,
              pageController: pageController,
              scrollOffset: 0.0,
              onPageChanged: (index) => pageChangedCallCount++,
            ),
          ),
        ),
      );

      expect(find.byType(PageView), findsOneWidget);
      expect(find.byType(Card), findsAtLeastNWidgets(1));
    });

    testWidgets('should apply parallax offset', (WidgetTester tester) async {
      const scrollOffset = 100.0;

      await mockNetworkImagesFor(
        () => tester.pumpWidget(
          MaterialApp(
            supportedLocales: appSupportedLocales,
            localizationsDelegates: appLocalizationsDelegates,
            home: ImageCarousel(
              images: mockImages,
              pageController: pageController,
              scrollOffset: scrollOffset,
              onPageChanged: (index) => pageChangedCallCount++,
            ),
          ),
        ),
      );

      final transform =
          tester.widget<Transform>(find.byKey(const Key('parallax_transform')));

      expect(
          transform.transform.getTranslation().y, equals(scrollOffset * 0.5));
    });

    testWidgets('should call onPageChanged when swiping',
        (WidgetTester tester) async {
      pageChangedCallCount = 0;
      pageController.dispose();
      pageController = PageController(
        viewportFraction: 0.85,
        initialPage: 0,
      );

      await mockNetworkImagesFor(() async {
        await tester.pumpWidget(
          MaterialApp(
            supportedLocales: appSupportedLocales,
            localizationsDelegates: appLocalizationsDelegates,
            home: ImageCarousel(
              images: mockImages,
              pageController: pageController,
              scrollOffset: 0.0,
              onPageChanged: (index) => pageChangedCallCount++,
            ),
          ),
        );

        // Wait for layout to stabilize
        await tester.pumpAndSettle();

        // Drag by the width of the page to trigger page change
        await tester.drag(find.byType(PageView), const Offset(-400, 0));
        await tester.pumpAndSettle();

        expect(pageChangedCallCount, greaterThan(0));
      });
    });
  });
}
