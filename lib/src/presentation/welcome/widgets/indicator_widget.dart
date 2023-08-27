import 'package:banknote/src/app/themes/app_spacing.dart';
import 'package:flutter/material.dart';

class IndicatorWidget extends StatelessWidget {
  const IndicatorWidget({
    super.key,
    required this.itemCount,
    required this.currentIndex,
  });

  final int itemCount;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        itemCount,
        (index) => _buildIndicators(index),
      ),
    );
  }

  Widget _buildIndicators(int index) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      curve: Curves.ease,
      width: index == currentIndex ? AppSpacing.s_16 : AppSpacing.s_8,
      height: AppSpacing.s_8,
      margin: EdgeInsets.all(AppSpacing.s_4),
      decoration: BoxDecoration(
        color:
            index == currentIndex ? Colors.blue : Colors.white,
        borderRadius: BorderRadius.circular(AppSpacing.r_7),
      ),
    );
  }
}
