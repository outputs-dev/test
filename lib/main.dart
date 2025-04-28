import 'dart:ui';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled/features/onboarding/intro_page.dart';
import 'package:untitled/palette.dart';
import 'package:untitled/translations/gen/codegen_loader.g.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  _configureDispatcher();
  runApp(
    EasyLocalization(
      supportedLocales: [Locale('en')],
      path: 'lib/translations',
      useOnlyLangCode: true,
      fallbackLocale: const Locale('en'),
      assetLoader: const CodegenLoader(),
      child: const MyApp(),
    ),
  );
}

void _configureDispatcher() {
  final dispatcher = WidgetsBinding.instance.platformDispatcher;
  _configureBrightness(dispatcher: dispatcher);
  dispatcher.onPlatformBrightnessChanged = () {
    _configureBrightness(dispatcher: dispatcher);
  };
}

void _configureBrightness({required PlatformDispatcher dispatcher}) {
  Palette().brightness = dispatcher.platformBrightness;
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      home: const IntroPage(),
    );
  }
}
