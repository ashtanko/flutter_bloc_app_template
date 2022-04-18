import 'package:flutter_bloc_app_template/index.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../helpers/data.dart';
import '../mocks.dart';

void main() {
  group('Messages Repository Tests', () {
    late EmailListRepository repository;

    setUp(() {
      repository = MockEmailListRepository();
    });

    group('loadData', () {
      test('returns list of email_list', () {
        when(repository.loadData()).thenAnswer((_) => Future.value(mockEmails));
        expect(
          repository.loadData(),
          completion(equals(mockEmails)),
        );
      });

      test('returns empty list', () {
        when(repository.loadData()).thenAnswer((_) => Future.value([]));
        expect(
          repository.loadData(),
          completion(equals([])),
        );
      });
    });
  });
}
