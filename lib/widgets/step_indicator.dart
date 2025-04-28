import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:untitled/palette.dart';

class StepIndicator extends StatelessWidget {
  const StepIndicator({required this.step, super.key})
    : assert(step >= 1 && step <= 3, 'Step must be between 1 and 3');
  final int step;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (var i = 0; i < 3; i++) ...[
          (i + 1) == step
              ? const _LargeIndicator()
              : const _SmallInactiveIndicator(),
          if (i < 2) const Gap(4),
        ],
      ],
    );
  }
}

class _LargeIndicator extends StatelessWidget {
  const _LargeIndicator();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 16,
      height: 8,
      decoration: BoxDecoration(
        color: Palette().buttonColor(),
        borderRadius: BorderRadius.circular(4),
      ),
    );
  }
}

class _SmallInactiveIndicator extends StatelessWidget {
  const _SmallInactiveIndicator();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 8,
      height: 8,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Palette().buttonColor().withAlpha(51),
      ),
    );
  }
}
