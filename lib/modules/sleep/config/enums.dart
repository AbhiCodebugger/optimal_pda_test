import 'package:pdh_test_flutter/config/constants/constants.dart';

enum SleepQuality {
  sleptThrough,
  brokenSleep,
  wokeUpEarly,
  wokeUpLate,
  none,
}

extension SleepQualityTranslation on SleepQuality {
  String toRawString() {
    switch (this) {
      case SleepQuality.sleptThrough:
        return 'Slept Through';
      case SleepQuality.brokenSleep:
        return 'Broken Sleep';
      case SleepQuality.wokeUpEarly:
        return 'Woke-up early';
      case SleepQuality.wokeUpLate:
        return 'Woke-up late';
      case SleepQuality.none:
        return 'Unknown';
    }
  }

  String toIconPath() {
    switch (this) {
      case SleepQuality.sleptThrough:
        return sleepSleepThrough;
      case SleepQuality.brokenSleep:
        return sleepBrokenSleep;
      case SleepQuality.wokeUpEarly:
        return sleepWakeUpEarly;
      case SleepQuality.wokeUpLate:
      default:
        return sleepWakeUpLate;
    }
  }
}

extension StringToSleepQuality on String {
  SleepQuality? toSleepQuality() {
    switch (this) {
      case 'Slept Through':
        return SleepQuality.sleptThrough;
      case 'Broken Sleep':
        return SleepQuality.brokenSleep;
      case 'Woke-up early':
        return SleepQuality.wokeUpEarly;
      case 'Woke-up late':
        return SleepQuality.wokeUpLate;
      default:
        return null;
    }
  }
}
