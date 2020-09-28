extension ccNextDate on DateTime {
  DateTime ccNextMonth(int step) {
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

  DateTime ccNextYear(int step) {
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

  DateTime ccNextDay(int step) {
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

  DateTime ccNextHour(int step) {
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

  DateTime ccNextMinute(int step) {
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

  DateTime ccNextSecond(int step) {
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

  DateTime ccNextMillisecond(int step) {
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

  DateTime ccNextMicrosecond(int step) {
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
  int get ccSecondsSinceEpoch => this.millisecondsSinceEpoch ~/ 1000;

  /// time在一天 的起点 00:00:00 的时刻
  DateTime get ccStartOfToday => DateTime(this.year, this.month, this.day);

  DateTime get ccEndOfToday =>
      DateTime(this.year, this.month, this.day, 23, 59, 59, 999, 999);
}
