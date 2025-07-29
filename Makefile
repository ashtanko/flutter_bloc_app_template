.PHONY: gen genAll rebuild check get localize runDev runDevQa runDevStaging runProdRelease \
        release apk lines force_upgrade integration_test

# Clean project, install dependencies & generate sources
rebuild:
	flutter clean
	flutter pub get
	flutter pub run build_runner build --delete-conflicting-outputs
	fluttergen -c pubspec.yaml

# Generate code with build_runner
gen:
	flutter pub run build_runner build --delete-conflicting-outputs

# Generate code and localizations
genAll:
	flutter pub run build_runner build --delete-conflicting-outputs
	flutter pub run intl_utils:generate
	fluttergen -c pubspec.yaml

# Generate localizations only
localize:
	flutter pub run intl_utils:generate

# Analyze the project
check:
	dart analyze .
	# flutter pub run dart_code_metrics:metrics analyze lib

# Run with flavors
runDev:
	flutter run --flavor dev -t lib/main.dart

runDevQa:
	flutter run --flavor dev -t lib/main_qa.dart

runDevStaging:
	flutter run --flavor dev -t lib/main_staging.dart

release:
	flutter run --release -t lib/main_prod.dart

runProdRelease:
	flutter run --flavor prod --release -t lib/main_prod.dart

# Build release APK
apk:
	flutter build apk --flavor dev --release -t lib/main_prod.dart

# Build debug APK
debug_apk:
	flutter build apk --flavor dev --debug -t lib/main_dev.dart

# Count lines of Dart code
lines:
	find . -name '*.dart' | xargs wc -l

# Force upgrade packages
force_upgrade:
	flutter update-packages --force-upgrade

# Run integration test
integration_test:
	flutter test integration_test --flavor dev
