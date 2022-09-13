import 'package:flutter/material.dart';
import 'package:pdh_test_flutter/config/colors.dart';
import 'package:pdh_test_flutter/config/constants/general.dart';
import 'package:shimmer/shimmer.dart';

/// A card with a configurable height showing a shimmer effect.
class LoadingDashboardCard extends StatelessWidget {
  /// The height of the Loading widget.
  final double height;

  const LoadingDashboardCard({
    super.key,
    this.height = 100,
  });

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: AppColors.btnBackground,
      highlightColor: AppColors.btnBackgroundHighlight,
      child: Container(
        height: height,
        decoration: const BoxDecoration(
          color: AppColors.btnBackground,
          borderRadius: BorderRadius.all(AppRadius.md),
        ),
      ),
    );
  }
}
