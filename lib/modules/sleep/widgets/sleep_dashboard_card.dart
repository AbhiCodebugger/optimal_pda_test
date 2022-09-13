import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pdh_test_flutter/config/colors.dart';
import 'package:pdh_test_flutter/modules/sleep/config/enums.dart';
import 'package:pdh_test_flutter/modules/sleep/controllers/sleep_controller.dart';
import 'package:pdh_test_flutter/widgets/loading_dashboard_card.dart';
import 'package:flutter_svg/flutter_svg.dart';

/// A card to display the latest sleep data.
class SleepDashboardCard extends StatelessWidget {
  final String text1;
  final String text2;
  final String text3;
  final String text4;

  const SleepDashboardCard({
    required this.text1,
    required this.text2,
    required this.text3,
    required this.text4,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: AppColors.btnBackground,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            radius: 16,
            backgroundColor: AppColors.gray,
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: SvgPicture.asset(
                text1,
                color: AppColors.sleep,
                fit: BoxFit.contain,
              ),
            ),
          ),
          Text(
            text2,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(width: 15),
          SizedBox(
            width: 70,
            child: Text(
              text3,
              textAlign: TextAlign.end,
              maxLines: 2,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
            ),
          ),
          SvgPicture.asset(
            text4,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
