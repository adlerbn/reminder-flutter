enum FrequencyType {
  none,
  minutely,
  hourly,
  daily,
  weekly,
  monthly,
  yearly;
}

extension FrequencyTypeMapper on FrequencyType {
  static FrequencyType mapFromString(String? value) {
    if (value == null) return FrequencyType.none;

    try {
      final result = FrequencyType.values.firstWhere((e) => e.name == value);

      return result;
    } catch (_) {
      return FrequencyType.none;
    }
  }
}

extension FrequencyTypeExtension on FrequencyType {
  String get title {
    switch (this) {
      case FrequencyType.none:
        return '';
      case FrequencyType.minutely:
        return 'minutes';
      case FrequencyType.hourly:
        return 'hours';
      case FrequencyType.daily:
        return 'days';
      case FrequencyType.weekly:
        return 'weeks';
      case FrequencyType.monthly:
        return 'months';
      case FrequencyType.yearly:
        return 'years';
    }
  }

  int toSeconds() {
    switch (this) {
      case FrequencyType.none:
        return 0;
      case FrequencyType.minutely:
        return Duration.secondsPerMinute;
      case FrequencyType.hourly:
        return Duration.secondsPerHour;
      case FrequencyType.daily:
        return Duration.secondsPerDay;
      case FrequencyType.weekly:
        return Duration.secondsPerDay * 7;
      case FrequencyType.monthly:
        return Duration.secondsPerDay * 31;
      case FrequencyType.yearly:
        return Duration.secondsPerDay * 365;
    }
  }
}
