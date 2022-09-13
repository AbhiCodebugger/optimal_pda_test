import 'package:pdh_test_flutter/modules/sleep/config/enums.dart';

/// Sleep data model.
class SleepTrackingData {
  /// The total amount of sleep in minutes.
  int sleepAmount;

  /// The time sleep started in minutes from midnight.
  int sleepTime;

  /// The quality of the sleep.
  SleepQuality sleepQuality;

  /// The date the data was created.
  late DateTime dateTaken;

  SleepTrackingData({
    required this.sleepAmount,
    required this.sleepTime,
    required this.sleepQuality,
    DateTime? dateTaken,
  }) {
    this.dateTaken = dateTaken ?? DateTime.now();
  }
}
