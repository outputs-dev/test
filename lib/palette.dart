import 'package:flutter/material.dart';

/// Defines a structure to support consistent cross-theme color mapping.
/// Code generation will be integrated in the future (currently in development).
/// Color names are aligned with Figma color tokens (where available)
/// to maintain consistency and avoid confusion,
/// using CamelCase naming convention.
class Palette {

  factory Palette() => _instance;
  Palette._();

  static final Palette _instance = Palette._();

  Brightness _brightness = Brightness.light;

  set brightness(Brightness brightness) {
    _brightness = brightness;
    WidgetsFlutterBinding.ensureInitialized().performReassemble();
  }

  Color defaultText() {
    switch (_brightness) {
      case Brightness.light:
        return _darkDark5;
      case Brightness.dark:
        return _darkDark5;
    }
  }

  Color darkDark1() {
    switch (_brightness) {
      case Brightness.light:
        return _darkDark1;
      case Brightness.dark:
        return _darkDark1;
    }
  }

  Color darkDark2() {
    switch (_brightness) {
      case Brightness.light:
        return _darkDark2;
      case Brightness.dark:
        return _darkDark2;
    }
  }

  Color white() {
    switch (_brightness) {
      case Brightness.light:
        return _white;
      case Brightness.dark:
        return _white;
    }
  }

  Color buttonColor() {
    switch (_brightness) {
      case Brightness.light:
        return _buttonColor;
      case Brightness.dark:
        return _buttonColor;
    }
  }

  Color textColor1() {
    switch (_brightness) {
      case Brightness.light:
        return _textColor1;
      case Brightness.dark:
        return _textColor1;
    }
  }

  Color textColor2() {
    switch (_brightness) {
      case Brightness.light:
        return _textColor2;
      case Brightness.dark:
        return _textColor2;
    }
  }

  Color black() {
    switch (_brightness) {
      case Brightness.light:
        return _black;
      case Brightness.dark:
        return _black;
    }
  }
  Color textColor3() {
    switch (_brightness) {
      case Brightness.light:
        return _textColor3;
      case Brightness.dark:
        return _textColor3;
    }
  }
  Color buttonColor1() {
    switch (_brightness) {
      case Brightness.light:
        return _buttonColor1;
      case Brightness.dark:
        return _buttonColor1;
    }
  }

  static const _black = Color(0xFF000000);
  static const _white = Color(0xFFFFFFFF);

  static const _darkDark1 = Color(0xFF717784);
  static const _darkDark2 = Color(0xFF525866);
  static const _darkDark5 = Color(0xFF181B25);

  static const _buttonColor = Color(0xFF75563D);
  static const _buttonColor1 = Color(0xFF3F4A5E);
  static const _textColor1 = Color(0xFF625F5E);
  static const _textColor2 = Color(0xFF0E121B);
  /// rgba(65, 64, 66, 0.80);
  static const _textColor3 = Color(0xFF615E5E);
}
