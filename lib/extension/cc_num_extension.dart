import 'cc_string_extension.dart';

extension CommaNum on num {
  String toCommaStr({int decimalPlaces}) {
    if (this == 0) {
      return '0';
    }
    String value = (decimalPlaces != null && decimalPlaces >= 0)
        ? this.toStringAsFixed(decimalPlaces)
        : this.toString();

    String integerStr;
    String decimalStr;
    if (value.contains('.')) {
      List<String> list = value.split('.');
      integerStr = list.first;
      decimalStr = list.last;
    } else {
      integerStr = value;
    }

    /// 如果整数位小于等于3位
    if (integerStr.length <= 3 && decimalStr.length <= 3) {
      String result = '$integerStr${decimalStr == null ? '' : '.$decimalStr'}';
      while (result.endsWith('0')) {
        result = result.removeLast();
        if (result.endsWith('.')) {
          result = result.removeLast();
          break;
        }
      }
      return result;
    }

    ///如果整数位大于3位

    String temp = '';

    for (int i = 0; i < integerStr.length; i++) {
      int index = integerStr.length - 1 - i;
      String c = integerStr.getChar(index);
      if (i != 0 && i % 3 == 0) {
        temp = '$c,$temp';
      } else {
        temp = '$c$temp';
      }
    }
    if (temp.startsWith(',')) {
      temp.removeFirst();
    }

    String result = '$temp${decimalStr == null ? '' : '.$decimalStr'}';
    while (result.endsWith('0')) {
      result = result.removeLast();
      if (result.endsWith('.')) {
        result = result.removeLast();
        break;
      }
    }
    return result;
  }
}