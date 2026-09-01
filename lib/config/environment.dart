import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc_app_template/config/build_type.dart';
import 'package:talker_bloc_logger/talker_bloc_logger_observer.dart';

/// A class for managing environment configurations based on different
/// build types.
class Environment<T> implements Listenable {
  Environment._(this._currentBuildType, T config)
      : _config = ValueNotifier<T>(config),
        _listeners = [];

  /// Returns the singleton instance created by [init].
  ///
  /// Throws a [StateError] when [init] has not run yet, which is easier to
  /// diagnose than the null cast error this used to produce.
  factory Environment.instance() {
    final instance = _instance;
    if (instance == null) {
      throw StateError(
        'Environment.init() must be called before Environment.instance().',
      );
    }

    return instance as Environment<T>;
  }

  /// The singleton instance of the [Environment].
  static Environment<dynamic>? _instance;

  final BuildType _currentBuildType;
  final List<VoidCallback> _listeners;
  final ValueNotifier<T> _config;

  /// Whether [init] has already run.
  static bool get isInitialized => _instance != null;

  T get config => _config.value;

  set config(T c) {
    _config.value = c;
    _notifyListeners(); // Notify listeners when the config changes
  }

  /// Checks if the current build type is debug.
  bool get isDebug => _currentBuildType == BuildType.debug;

  /// Checks if the current build type is release.
  bool get isRelease => _currentBuildType == BuildType.release;

  /// Returns the current build type.
  BuildType get buildType => _currentBuildType;

  @override
  void addListener(VoidCallback listener) {
    _listeners.add(listener);
  }

  @override
  void removeListener(VoidCallback listener) {
    _listeners.remove(listener);
  }

  /// Notifies all registered listeners that the environment configuration
  /// has changed.
  void _notifyListeners() {
    for (final listener in _listeners) {
      listener();
    }
  }

  /// Initializes the singleton instance of [Environment].
  ///
  /// This method should be called once at the app's initialization to set up
  /// the environment configuration.
  static void init<T>({
    required BuildType buildType,
    required T config,
  }) {
    _instance ??= Environment<T>._(buildType, config);
    // Bloc transitions carry full state objects; only log them off release
    // builds so production neither pays the cost nor leaks the contents.
    if (!kReleaseMode) {
      Bloc.observer = TalkerBlocObserver();
    }
  }
}
