import 'dart:ui';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:untitled/palette.dart';
import 'package:untitled/textstyle_generator_trigger.dart';
import 'package:untitled/translations/gen/locale_keys.g.dart';

class MainButton extends StatelessWidget {
  const MainButton({this.title, super.key});
  final String? title;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(28),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 40, sigmaY: 40),
        child: Container(
          height: 56,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          decoration: BoxDecoration(
            color: Palette().buttonColor1(),
            borderRadius: BorderRadius.circular(100),
          ),
          alignment: Alignment.center,
          child: Text(
            title ?? LocaleKeys.getStartedButton.tr(),
            style: TextStyles.inter16w500m(
              c: Palette().white(),
              h: 1.5,
            ).copyWith(letterSpacing: -0.32),
          ),
        ),
      ),
    );
  }
}
