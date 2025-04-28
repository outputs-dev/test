// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes, avoid_renaming_method_parameters, constant_identifier_names

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>?> load(String path, Locale locale) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> _en = {
  "risingWomanTitle": "rising woman",
  "embraceYourShadows": "EMBRACE YOUR SHADOWS\nEMBODY LIGHT",
  "discoverThroughStars": "Discover yourself Through the Stars",
  "exploreSelfAwarenessAstrology": "Explore self-awareness through astrology. Navigate life with clarity.",
  "getStartedButton": "Get Started",
  "alreadyHaveAccount": "Already have an account?",
  "signInButton": "Sign in",
  "whatsYourName": "What’s your name?",
  "yourNamePlaceholder": "Your name",
  "continueButton": "Continue"
};
static const Map<String, Map<String,dynamic>> mapLocales = {"en": _en};
}
