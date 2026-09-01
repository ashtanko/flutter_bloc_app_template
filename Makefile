.PHONY: rebuild gen genAll localize check format get runDev runDevQa runDevStaging \
        release runProdRelease apk debug_apk appbundle lines force_upgrade outdated \
        coverage integration_test screenshot_test

# Clean project, install dependencies & generate sources
rebuild:
	flutter clean
	flutter pub get
	dart run build_runner build
	flutter gen-l10n
	fluttergen -c pubspec.yaml

# Install dependencies
get:
	flutter pub get

# Generate code with build_runner
gen:
	dart run build_runner build

# Generate code, localizations and assets
genAll:
	dart run build_runner build
	flutter gen-l10n
	fluttergen -c pubspec.yaml

# Generate localizations only (gen-l10n reads l10n.yaml)
localize:
	flutter gen-l10n

# Analyze the project
check:
	flutter analyze

# Format Dart sources
format:
	dart format lib test integration_test

# Run with flavors
runDev:
	flutter run --flavor dev -t lib/main_dev.dart

runDevQa:
	flutter run --flavor qa -t lib/main_qa.dart

runDevStaging:
	flutter run --flavor dev -t lib/main_dev.dart

release:
	flutter run --flavor prod --release -t lib/main_prod.dart

runProdRelease:
	flutter run --flavor prod --release -t lib/main_prod.dart

# Build release APK (production flavor)
apk:
	flutter build apk --flavor prod --release -t lib/main_prod.dart

# Build the Play Store artifact
appbundle:
	flutter build appbundle --flavor prod --release -t lib/main_prod.dart

# Build debug APK
debug_apk:
	flutter build apk --flavor dev --debug -t lib/main_dev.dart

# Count lines of Dart code
lines:
	find . -name '*.dart' | xargs wc -l

# Dependency freshness
outdated:
	flutter pub outdated

force_upgrade:
	flutter pub upgrade --major-versions

# Unit + widget tests with coverage
coverage:
	flutter test --coverage

# Run integration test
integration_test:
	flutter test integration_test --flavor dev

screenshot_test:
	flutter drive --driver=test_driver/integration_test.dart --target=screenshot_test/settings_screenshot_test.dart --flavor dev
