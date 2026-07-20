import 'package:flutter/material.dart';
import '../../../core/constants/app_spacing.dart';

class SectionContainer extends StatelessWidget {
  final Widget child;

  const SectionContainer({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          maxWidth: 1400,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.sectionHorizontal,
            vertical: AppSpacing.sectionVertical,
          ),
          child: child,
        ),
      ),
    );
  }
}