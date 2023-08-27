import 'package:flutter_bloc_app_template/config/build_type.dart';
import 'package:flutter_bloc_app_template/config/environment.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Environment Tests', () {
    test('Initialization and Properties', () {
      Environment.init(
        buildType: BuildType.debug,
        config: 'Debug Config',
      );

      final environment = Environment<String>.instance();

      expect(environment.config, 'Debug Config');
      expect(environment.isDebug, true);
      expect(environment.isRelease, false);
      expect(environment.buildType, BuildType.debug);
    });

    test('Config Update', () {
      Environment.init(
        buildType: BuildType.debug,
        config: 'Initial Config',
      );

      final environment = Environment<String>.instance()
        ..config = 'Updated Config';

      expect(environment.config, 'Updated Config');
    });

    test('Listener Notification', () {
      Environment.init(
        buildType: BuildType.debug,
        config: 'Debug Config',
      );

      final environment = Environment<String>.instance();

      var listenerCallCount = 0;
      void listenerCallback() {
        listenerCallCount++;
      }

      environment..addListener(listenerCallback)
      ..config = 'Updated Config';

      // Ensure that the listener has been notified
      expect(listenerCallCount, 1);

      environment..removeListener(listenerCallback)
      ..config = 'Another Update';

      // Listener should not be called after removal
      expect(listenerCallCount, 1);
    });
  });
}
