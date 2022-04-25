# flutter-bloc-app-template 🤖
The project of the empty template with Flutter has built the basic framework to realize the functions of internationalization, theme peeling etc.

This template is focused on delivering a project with **static analysis** and **continuous integration** already in place.

[![style: lint][lint-style-badge]][lint-style-link]
[![codecov][codecov-badge]][codecov-link]
[![CI][ci-badge]][ci-link]
[![CodeFactor][codefactor-badge]][codefactor-link]
[![License][license-badge]][license-link]
[![style: effective dart][style-badge]][style-link]
[![GitHub forks][forks-badge]][forks-link]
[![GitHub stars][stars-badge]][stars-link]

## How to use 🐾
Just click on [![Use this template](https://img.shields.io/badge/-Use%20this%20template-brightgreen)](https://github.com/ashtanko/flutter_bloc_app_template/generate) button to create a new repo starting from this template.

## Features 🦄
- Theme support
- BLoC pattern [**bloc**](https://pub.dev/packages/bloc)
- Service Locator using [**get_it**](https://pub.dev/packages/get_it)
- Localization using [**intl**](https://pub.dev/packages/intl)
- CI Setup with GitHub Actions
- Codecov Setup with GitHub Actions
- Unit test coverage

## Android Screenshots
<p align="left">
<img src="/preview/android/light_theme.png" width="32%"/>
<img src="/preview/android/dark_theme.png" width="32%"/>
<img src="/preview/android/yellow_theme.png" width="32%"/>
</p>

## iOS Screenshots
<p align="left">
<img src="/preview/ios/light_theme.png" width="32%"/>
<img src="/preview/ios/dark_theme.png" width="32%"/>
<img src="/preview/ios/yellow_theme.png" width="32%"/>
</p>


## Static Analysis 🔍

This template is using [**analyzer**](https://pub.dev/packages/analyzer)

Supported Lint [**Rules**](https://dart-lang.github.io/linter/lints/)

Supported Dart Code [**Metrics**](https://dartcodemetrics.dev/docs/getting-started/introduction)

Dart [**Lint**](https://github.com/passsy/dart-lint)

## CI ⚙️
This template is using [**GitHub Actions**](https://github.com/ashtanko/flutter_app_skeleton/actions) as CI. You don't need to setup any external service and you should have a running CI once you start using this template.

## How to build 🛠️

The Project uses [**FlutterGen**](https://github.com/FlutterGen/flutter_gen) to generate localizations, dependencies and mocks

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
check
```

## Reminders 🧠
Change name in pubspec.yaml file

Remove anything you don't need

Configure analysis_options.yaml for your needs

## Contributing 🤝

Feel free to open a issue or submit a pull request for any bugs/improvements.

## License 📄

This template is licensed under the MIT License - see the [License](LICENSE) file for details.
Please note that the generated template is offering to start with a MIT license but you can change it to whatever you wish, as long as you attribute under the MIT terms that you're using the template.

[lint-style-badge]: https://img.shields.io/badge/style-lint-4BC0F5.svg
[lint-style-link]: https://pub.dev/packages/lint
[codecov-badge]: https://codecov.io/gh/ashtanko/flutter_bloc_app_template/branch/main/graph/badge.svg?token=T68Rqwj7Ll
[codecov-link]: https://codecov.io/gh/ashtanko/flutter_bloc_app_template
[ci-badge]: https://github.com/ashtanko/flutter_bloc_app_template/actions/workflows/ci.yml/badge.svg
[ci-link]: https://github.com/ashtanko/flutter_bloc_app_template/actions/workflows/ci.yml
[codefactor-badge]: https://www.codefactor.io/repository/github/ashtanko/flutter_bloc_app_template/badge
[codefactor-link]: https://www.codefactor.io/repository/github/ashtanko/flutter_bloc_app_template
[license-badge]: https://img.shields.io/github/license/dart-code-checker/dart-code-metrics
[license-link]: https://github.com/dart-code-checker/dart-code-metrics/blob/master/LICENSE
[style-badge]: https://img.shields.io/badge/style-effective_dart-40c4ff.svg
[style-link]: https://pub.dev/packages/effective_dart
[forks-badge]: https://img.shields.io/github/forks/ashtanko/flutter_bloc_app_template
[forks-link]: https://github.com/ashtanko/flutter_bloc_app_template/network
[stars-badge]: https://img.shields.io/github/stars/ashtanko/flutter_bloc_app_template
[stars-link]: https://github.com/ashtanko/flutter_bloc_app_template/stargazers