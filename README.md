# flutter-bloc-app-template 🤖
This is a basic Flutter project template that uses the BLoC pattern architecture for state management. 
It is a good starting point for creating a new Flutter app that uses BLoC for state management.

This template is focused on delivering a project with **static analysis** and **continuous integration** already in place.

[![style: lints][lints-style-badge]][lints-style-link]
[![codecov][codecov-badge]][codecov-link]
[![CI][ci-badge]][ci-link]
[![CodeFactor][codefactor-badge]][codefactor-link]
[![License][license-badge]][license-link]
[![GitHub forks][forks-badge]][forks-link]
[![GitHub stars][stars-badge]][stars-link]
[![Codacy Badge](https://app.codacy.com/project/badge/Grade/1c12bf943fea43098f0853a05e2366be)](https://app.codacy.com/gh/ashtanko/flutter_bloc_app_template/dashboard?utm_source=gh&utm_medium=referral&utm_content=&utm_campaign=Badge_grade)
[![Codacy Badge](https://app.codacy.com/project/badge/Coverage/1c12bf943fea43098f0853a05e2366be)](https://app.codacy.com/gh/ashtanko/flutter_bloc_app_template/dashboard?utm_source=gh&utm_medium=referral&utm_content=&utm_campaign=Badge_coverage)

## How to use 🐾
Just click on [![Use this template](https://img.shields.io/badge/-Use%20this%20template-brightgreen)](https://github.com/ashtanko/flutter_bloc_app_template/generate) button to create a new repo starting from this template.

## Features 🦄
- Theme support
- BLoC pattern [**bloc**](https://pub.dev/packages/bloc)
- Service Locator using [**get_it**](https://pub.dev/packages/get_it)
- Localization using [**flutter gen-l10n**](https://docs.flutter.dev/ui/accessibility-and-internationalization/internationalization) (ARB files in `lib/l10n/`)
- CI Setup with GitHub Actions
- Codecov Setup with GitHub Actions
- Unit test coverage
- Integration tests

## Configuration
The template has 3 flavors:
- dev
- prod
- qa

The template has 3 build variants:
- debug
- profile
- release

For example dev configuration for Android Studio looks like:

<p align="left">
<img src="/preview/config/dev.png" width="32%"/>
</p>

- dev: --flavor dev -t lib/main_dev.dart

## Android Screenshots
<p align="left">
<img src="/preview/android/launches_android_dark_theme.png" width="32%"/>
<img src="/preview/android/launches_android_light_theme.png" width="32%"/>
</p>

<p align="left">
<img src="/preview/android/messages_android_dark_theme.png" width="32%"/>
<img src="/preview/android/messages_android_ligth_theme.png" width="32%"/>
</p>

## iOS Screenshots
<p align="left">
<img src="/preview/ios/launches_ios_dark_theme.png" width="32%"/>
<img src="/preview/ios/launches_ios_light_theme.png" width="32%"/>
</p>

<p align="left">
<img src="/preview/ios/messages_ios_dark_theme.png" width="32%"/>
<img src="/preview/ios/messages_ios_ligth_theme.png" width="32%"/>
</p>


## Static Analysis 🔍

This template is using [**analyzer**](https://pub.dev/packages/analyzer)

Supported Lint [**Rules**](https://dart-lang.github.io/linter/lints/)

Lint rules come from [**lints**](https://pub.dev/packages/lints) and
[**flutter_lints**](https://pub.dev/packages/flutter_lints), configured in
`analysis_options.yaml`.

## CI ⚙️
This template is using [**GitHub Actions**](https://github.com/ashtanko/flutter_app_skeleton/actions) as CI. You don't need to setup any external service and you should have a running CI once you start using this template.

## How to build 🛠️

The project uses [**FlutterGen**](https://github.com/FlutterGen/flutter_gen) for
assets/colors/fonts, `build_runner` for freezed/json/retrofit/injectable/mockito
sources, and `flutter gen-l10n` for localizations.

Activate flutter_gen using dart pub global activate flutter_gen command if you haven't done that before.

after add export PATH="$PATH":"$HOME/.pub-cache/bin" to bash_profile

``` bash
# clean project, install dependencies & generate sources
make

# generate localizations, dependencies, image assets, colors, fonts
make gen

# generate localizations
make localize

# analyze the project
make check

# format sources
make format

# run the tests with coverage
make coverage

# build the Play Store artifact (prod flavor)
make appbundle
```

## Flavors and configuration 🎛️

Each entrypoint initialises `Environment` with a `BuildType` and an `AppConfig`
before the app boots; `AppConfig` supplies the API base urls that reach Dio via
`NetworkModule`, and `BuildType.name` selects the injectable environment.

| Flavor | Entrypoint          | Build type            |
|--------|---------------------|-----------------------|
| dev    | `lib/main_dev.dart` | `BuildType.staging`   |
| qa     | `lib/main_qa.dart`  | `BuildType.qa`        |
| prod   | `lib/main_prod.dart`| `BuildType.release`   |

The app ships against bundled mock data because the public SpaceX API was
retired. Point it back at the live API with:

``` bash
flutter build appbundle --flavor prod -t lib/main_prod.dart \
  --dart-define=USE_MOCK_DATA=false
```

## Release signing 🔑

`android/app/build.gradle.kts` only registers a release signing config when
`android/key.properties` exists. Generate one with `./generate-release-keystore.sh`,
or let the release workflow build it from the `KEYSTORE_*` repository secrets.
Without it `assembleRelease` fails loudly rather than producing a debug-signed
artifact.

## Reminders 🧠
Change name in pubspec.yaml file

Remove anything you don't need

Configure analysis_options.yaml for your needs

## Contributing 🤝

Feel free to open a issue or submit a pull request for any bugs/improvements.

## License 📄

This template is licensed under the MIT License - see the [License](LICENSE) file for details.
Please note that the generated template is offering to start with a MIT license but you can change it to whatever you wish, as long as you attribute under the MIT terms that you're using the template.

[lints-style-badge]: https://img.shields.io/badge/style-lints-4BC0F5.svg
[lints-style-link]: https://pub.dev/packages/lints
[codecov-badge]: https://codecov.io/gh/ashtanko/flutter_bloc_app_template/branch/main/graph/badge.svg?token=T68Rqwj7Ll
[codecov-link]: https://codecov.io/gh/ashtanko/flutter_bloc_app_template
[ci-badge]: https://github.com/ashtanko/flutter_bloc_app_template/actions/workflows/ci.yml/badge.svg
[ci-link]: https://github.com/ashtanko/flutter_bloc_app_template/actions/workflows/ci.yml
[codefactor-badge]: https://www.codefactor.io/repository/github/ashtanko/flutter_bloc_app_template/badge
[codefactor-link]: https://www.codefactor.io/repository/github/ashtanko/flutter_bloc_app_template
[license-badge]: https://img.shields.io/github/license/dart-code-checker/dart-code-metrics
[license-link]: https://github.com/dart-code-checker/dart-code-metrics/blob/master/LICENSE
[forks-badge]: https://img.shields.io/github/forks/ashtanko/flutter_bloc_app_template
[forks-link]: https://github.com/ashtanko/flutter_bloc_app_template/network
[stars-badge]: https://img.shields.io/github/stars/ashtanko/flutter_bloc_app_template
[stars-link]: https://github.com/ashtanko/flutter_bloc_app_template/stargazers