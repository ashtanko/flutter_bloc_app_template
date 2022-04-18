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

      test('returns correct lists', () async {
        final list = EmailListRepository().loadData();
        await list.then((values) {
          expect(values, hasLength(6));
          expect(
            values.contains(
              Email(
                sender: 'Ralph Edwards',
                subject: 'The results to our user testing',
                messagePreview: 'What is the progress on that task?',
                isFavorite: false,
                date: DateTime.parse('2022-04-10 20:18:04Z'),
                image:
                    'https://external-preview.redd.it/STUmd55tKPrA-gq3y2wqicFTkWL-7oUij0SazqkGylE.jpg?auto=webp&s=6b1cd0e4976a852c9a805cf54a7bb7a19d169063',
                attachments: [],
              ),
            ),
            true,
          );
        });
        expect(list, completes);
      });
    });
  });
}
