.PHONY: gen rebuild check get localize

rebuild:
	flutter clean
	flutter packages pub get
	flutter packages pub run build_runner build --delete-conflicting-outputs
	fluttergen -c pubspec.yaml

gen:
	flutter packages pub run build_runner build --delete-conflicting-outputs
	flutter pub run intl_utils:generate
	fluttergen -c pubspec.yaml

localize:
	flutter pub run intl_utils:generate

check:
	dart analyze .
	#dart format --output=none --set-exit-if-changed .
	flutter pub run dart_code_metrics:metrics analyze lib
