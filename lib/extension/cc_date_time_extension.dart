extension NextDate on DateTime {
  DateTime nextMonth(int step) {
    return DateTime(
      year,
      month + step,
      day,
      hour,
      minute,
      second,
      millisecond,
      microsecond,
    );
  }

  DateTime nextYear(int step) {
    return DateTime(
      year + step,
      month,
      day,
      hour,
      minute,
      second,
      millisecond,
      microsecond,
    );
  }

  DateTime nextDay(int step) {
    return DateTime(
      year,
      month,
      day + step,
      hour,
      minute,
      second,
      millisecond,
      microsecond,
    );
  }

  DateTime nextHour(int step) {
    return DateTime(
      year,
      month,
      day,
      hour + step,
      minute,
      second,
      millisecond,
      microsecond,
    );
  }

  DateTime nextMinute(int step) {
    return DateTime(
      year,
      month,
      day,
      hour,
      minute + step,
      second,
      millisecond,
      microsecond,
    );
  }

  DateTime nextSecond(int step) {
    return DateTime(
      year,
      month,
      day,
      hour,
      minute,
      second + step,
      millisecond,
      microsecond,
    );
  }

  DateTime nextMillisecond(int step) {
    return DateTime(
      year,
      month,
      day,
      hour,
      minute,
      second,
      millisecond + step,
      microsecond,
    );
  }

  DateTime nextMicrosecond(int step) {
    return DateTime(
      year,
      month,
      day,
      hour,
      minute,
      second,
      millisecond,
      microsecond + step,
    );
  }
}

extension DateUtil on DateTime {
  /// 以秒为计的时间戳
  int get secondsSinceEpoch => this.millisecondsSinceEpoch ~/ 1000;

  /// time在一天 的起点 00:00:00 的时刻
  DateTime get startOfToday => DateTime(this.year, this.month, this.day);

  DateTime get endOfToday =>
      DateTime(this.year, this.month, this.day, 23, 59, 59, 999, 999);
}
