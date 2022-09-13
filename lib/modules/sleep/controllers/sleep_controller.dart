import 'dart:math';
import 'package:get/get.dart';
import 'package:loggy/loggy.dart';
import 'package:pdh_test_flutter/modules/sleep/config/enums.dart';
import 'package:pdh_test_flutter/modules/sleep/models/sleep_tracking_data.dart';

class SleepController extends GetxController with UiLoggy {
  /// The currently selected value for "Total amount of sleep" hours question.
  final RxInt _sleepAmountHours = 0.obs;

  /// Getter to use the Rx value easily.
  int get sleepAmountHours => _sleepAmountHours.value;

  /// Setter to use the Rx value easily.
  set sleepAmountHours(int value) => _sleepAmountHours.value = value;

  /// The currently selected value for "Total amount of sleep" minutes question.
  final RxInt _sleepAmountMinutes = 0.obs;

  /// Getter to use the Rx value easily.
  int get sleepAmountMinutes => _sleepAmountMinutes.value;

  /// Setter to use the Rx value easily.
  set sleepAmountMinutes(int value) => _sleepAmountMinutes.value = value;

  /// The currently selected value for "Time start sleep" hours question.
  final RxInt _sleepTimeHours = 0.obs;

  /// Getter to use the Rx value easily.
  int get sleepTimeHours => _sleepTimeHours.value;

  /// Setter to use the Rx value easily.
  set sleepTimeHours(int value) => _sleepTimeHours.value = value;

  /// The currently selected value for "Time start sleep" minutes question.
  final RxInt _sleepTimeMinutes = 0.obs;

  /// Getter to use the Rx value easily.
  int get sleepTimeMinutes => _sleepTimeMinutes.value;

  /// Setter to use the Rx value easily.
  set sleepTimeMinutes(int value) => _sleepTimeMinutes.value = value;

  /// The currently selected value for "Quality of sleep" question.
  final Rx<SleepQuality> _sleepQuality = SleepQuality.none.obs;

  /// Getter to use the Rx value easily.
  SleepQuality get sleepQuality => _sleepQuality.value;

  /// Setter to use the Rx value easily.
  set sleepQuality(SleepQuality value) => _sleepQuality.value = value;

  /// Indicated if network activity is happening.
  final RxBool _isLoading = false.obs;

  /// Getter to use the Rx value easily.
  bool get isLoading => _isLoading.value;

  /// Setter to use the Rx value easily.
  set isLoading(bool value) => _isLoading.value = value;

  RxList<SleepTrackingData> data = <SleepTrackingData>[].obs;

  void loadWidgetData() async {
    isLoading = true;

    SleepTrackingData random = SleepTrackingData(
      sleepAmount: Random().nextInt(360) + 240,
      sleepTime: Random().nextInt(360) + 1080,
      sleepQuality:
          SleepQuality.values[Random().nextInt(SleepQuality.values.length - 1)],
    );

    await Future.delayed(const Duration(seconds: 4));

    data.value = [random];

    isLoading = false;
  }

  String durationToString(int minutes) {
    var d = Duration(minutes: minutes);
    List<String> parts = d.toString().split(':');
    return '${parts[0].padLeft(2, '0')}h${parts[1].padLeft(2, '0')}';
  }

  void clear() {
    sleepAmountHours = 0;
    sleepAmountMinutes = 0;
    sleepTimeHours = 0;
    sleepTimeMinutes = 0;
    sleepQuality = SleepQuality.none;
  }

  @override
  void onInit() {
    super.onInit();

    loadWidgetData();
  }
}
