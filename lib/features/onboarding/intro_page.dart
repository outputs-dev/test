import 'dart:math' as math;
import 'dart:ui';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:untitled/generated_assets/assets.gen.dart';
import 'package:untitled/palette.dart';
import 'package:untitled/textstyle_generator_trigger.dart';
import 'package:untitled/translations/gen/locale_keys.g.dart';
import 'package:untitled/widgets/main_button.dart';
import 'package:untitled/widgets/step_indicator.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              Assets.imagesCosmicScene.path,
              fit: BoxFit.cover,
            ),
          ),

          // Positioned.fill(
          //   child: Container(
          //     decoration: const BoxDecoration(
          //       gradient: LinearGradient(
          //         begin: Alignment.bottomCenter,
          //         end: Alignment.topCenter,
          //         colors: [
          //           Color(0xFFFAF4F0), // цвет внизу
          //           Color(0x00FAF4F0), // полностью прозрачный
          //         ],
          //         stops: [0.0, 0.81], // исчезает на 81% от высоты
          //       ),
          //     ),
          //   ),
          // ),

          Positioned(
            left: 0,
            right: 0,
            bottom: MediaQuery.of(context).padding.bottom,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    Assets.iconsG12,
                    width: 104,
                    height: 103.5,
                    colorFilter: ColorFilter.mode(
                      Palette().white(),
                      BlendMode.srcIn,
                    ),
                  ),
                  const Gap(20),
                  Text(
                    LocaleKeys.risingWomanTitle.tr().toUpperCase(),
                    style: TextStyles.rufina24w400(
                      c: Palette().textColor2(),
                    ).copyWith(letterSpacing: -0.48),
                  ),
                  const Gap(12),
                  Text(
                    LocaleKeys.embraceYourShadows.tr(),
                    style: TextStyles.inter14w400(
                      c: Palette().textColor3(),
                      h: 1.42857,
                    ).copyWith(letterSpacing: 2.8),
                    textAlign: TextAlign.center,
                  ),
                  const Gap(40),
                  Container(
                    /// I think the width shouldn't be fixed,
                    /// but it's set to 350 in Figma.
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Palette().white(),
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        StepIndicator(step: 1),
                        const Gap(12),
                        Text(
                          LocaleKeys.discoverThroughStars.tr(),

                          /// The "Tiempos Headline" font is a commercial font,
                          /// so it has been replaced with Inter.
                          style: TextStyles.tiemposheadline32w400(h:1).copyWith(
                            letterSpacing: -0.32,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const Gap(10),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Text(
                            LocaleKeys.exploreSelfAwarenessAstrology.tr(),
                            style: TextStyles.inter16w400(
                              c: Palette().darkDark1(),
                              h: 1.5,
                            ).copyWith(letterSpacing: -0.16),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const Gap(32),
                        MainButton(),
                        const Gap(16),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              LocaleKeys.alreadyHaveAccount.tr(),
                              style: TextStyles.inter16w400(
                                c: Palette().darkDark2(),
                                h: 1.5,
                              ).copyWith(letterSpacing: -0.32),
                            ),
                            const Gap(8),
                            Text(
                              LocaleKeys.signInButton.tr(),

                              /// Make sure you comply with the license agreement
                              /// when using this font.
                              style: TextStyles.sfProDisplay16w600sb(
                                c: Palette().buttonColor(),
                                h: 1.5,
                              ).copyWith(letterSpacing: -0.32),
                            ),
                          ],
                        ),
                        const Gap(16),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}




class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // 🌌 Фон
          Positioned.fill(
            child: Image.asset(
              'assets/images/background.png',
              fit: BoxFit.cover,
            ),
          ),

          // 🟣 Один градиент, начинающийся снизу и исчезающий к 0.81
          Positioned.fill(
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Color(0xFFFAF4F0), // цвет внизу
                    Color(0x00FAF4F0), // полностью прозрачный
                  ],
                  stops: [0.0, 0.81], // исчезает на 81% от высоты
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}