.PHONY: gen genAll rebuild check get localize runDev runDevQa runDevStaging lines release apk

# clean project, install dependencies & generate sources
rebuild:
	flutter clean
	flutter packages pub get
	flutter packages pub run build_runner build --delete-conflicting-outputs
	fluttergen -c pubspec.yaml

# generate localizations, dependencies, image assets, colors, fonts
gen:
	flutter packages pub run build_runner build --delete-conflicting-outputs

# generate localizations, dependencies, image assets, colors, fonts
genAll:
	flutter packages pub run build_runner build --delete-conflicting-outputs
	flutter pub run intl_utils:generate
	fluttergen -c pubspec.yaml

# generate localizations
localize:
	flutter pub run intl_utils:generate

# analyze the project
check:
	dart analyze .
	# flutter pub run dart_code_metrics:metrics analyze lib

# flavors
runDev:
	flutter run --flavor dev -t lib/main.dart

runDevQa:
	flutter run --flavor dev -t lib/main_qa.dart

runDevStaging:
	flutter run --flavor dev -t lib/main_staging.dart

release:
	flutter run --release -t lib/main_release.dart

prodRelease:
	flutter run --flavor prod --release -t lib/main_release.dart

apk:
	flutter build apk --release -t lib/main_release.dart

lines:
	find . -name '*.dart' | xargs wc -l

force_upgrade:
	flutter update-packages --force-upgrade
