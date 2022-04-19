.PHONY: gen rebuild check get localize

# clean project, install dependencies & generate sources
rebuild:
	flutter clean
	flutter packages pub get
	flutter packages pub run build_runner build --delete-conflicting-outputs
	fluttergen -c pubspec.yaml

# generate localizations, dependencies, image assets, colors, fonts
gen:
	flutter packages pub run build_runner build --delete-conflicting-outputs
	flutter pub run intl_utils:generate
	fluttergen -c pubspec.yaml

# generate localizations
localize:
	flutter pub run intl_utils:generate

# analyze the project
check:
	dart analyze .
	flutter pub run dart_code_metrics:metrics analyze lib
