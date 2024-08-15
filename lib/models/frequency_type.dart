enum FrequencyType {
  none,
  hourly,
  daily,
  weekly,
  monthly,
  yearly;
}

extension FrequencyTypeExtension on FrequencyType {
  String get title {
    switch (this) {
      case FrequencyType.none:
        return '';
      case FrequencyType.hourly:
        return 'hour';
      case FrequencyType.daily:
        return 'day';
      case FrequencyType.weekly:
        return 'week';
      case FrequencyType.monthly:
        return 'month';
      case FrequencyType.yearly:
        return 'year';
    }
  }

  int toSeconds() {
    switch (this) {
      case FrequencyType.none:
        return 0;
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
