# untitled

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

- To clean and get packages
```sh
flutter clean && flutter pub get
```
- To remove conflicts
```sh
dart run build_runner build --delete-conflicting-outputs
```
- To generate localization
```sh
dart run easy_localization:generate --source-dir lib/translations -O lib/translations/gen && dart run easy_localization:generate -f keys --source-dir lib/translations -O lib/translations/gen -o locale_keys.g.dart
```
- And use in code - LocaleKeys.you_new_key.tr();