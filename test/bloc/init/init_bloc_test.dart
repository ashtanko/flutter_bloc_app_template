import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_bloc_app_template/bloc/init/init_bloc.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Init Bloc Event Tests', () {
    group('StartAppEvent', () {
      test('supports value comparison', () {
        expect(StartAppEvent(), StartAppEvent());
      });
    });
  });

  group('InitBloc', () {
    late InitBloc bloc;

    setUp(() {
      bloc = InitBloc();
    });

    tearDown(() => bloc.close());

    test('state returns correct state initially', () {
      expect(bloc.state, Initial());
    });

    group('open app', () {
      blocTest<InitBloc, InitState>(
        'open app correctly',
        build: () {
          return bloc;
        },
        act: (bloc) async => bloc.add(
          StartAppEvent(),
        ),
        expect: () => [
          OpenApp(),
        ],
      );
    });
  });
}
