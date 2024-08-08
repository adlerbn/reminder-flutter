enum FrequencyType {
  none,
  hourly,
  daily,
  weekly,
  monthly,
  yearly;
}

extension FrequencyTypeExtension on FrequencyType {
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
