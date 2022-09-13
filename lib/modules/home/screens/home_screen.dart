import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pdh_test_flutter/config/constants/constants.dart';
import 'package:pdh_test_flutter/modules/sleep/config/enums.dart';
import 'package:pdh_test_flutter/modules/sleep/controllers/sleep_controller.dart';
import 'package:pdh_test_flutter/modules/sleep/widgets/sleep_dashboard_card.dart';
import 'package:shimmer/shimmer.dart';

class HomeScreen extends GetView<SleepController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('PDH Test Flutter'),
        ),
        body: RefreshIndicator(
          onRefresh: () async {
            Get.find<SleepController>().loadWidgetData();
          },
          child: Obx(() => controller.isLoading
              ? Shimmer.fromColors(
                  baseColor: Colors.grey[700]!,
                  highlightColor: Colors.grey[50]!,
                  child: ListView.builder(
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return Card(
                        elevation: 1.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: const SizedBox(height: 80),
                      );
                    },
                  ),
                )
              : ListView(
                  padding: const EdgeInsets.all(12),
                  children: controller.data
                      .map<Widget>((data) => SleepDashboardCard(
                          text1: data.sleepQuality.toIconPath(),
                          text2:
                              "${controller.durationToString(data.sleepTime)}m",
                          text3: data.sleepQuality.toRawString(),
                          text4: data.sleepQuality.toIconPath()))
                      .toList())),
        ));
  }
}
