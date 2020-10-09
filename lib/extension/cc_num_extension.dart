import 'cc_string_extension.dart';

extension ccCommaNum on num {
  // The integer part plus a separator;
  // The fractional part is rounded to the nearest 2 decimal places;
  String ccToCommaStr() {
    if (this == 0) {
      return '0';
    }
    String value = this.toStringAsFixed(2);

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
        result = result.ccRemoveLast();
        if (result.endsWith('.')) {
          result = result.ccRemoveLast();
          break;
        }
      }
      return result;
    }

    ///如果整数位大于3位

    String temp = '';

    for (int i = 0; i < integerStr.length; i++) {
      int index = integerStr.length - 1 - i;
      String c = integerStr.ccGetChar(index);
      if (i != 0 && i % 3 == 0) {
        temp = '$c,$temp';
      } else {
        temp = '$c$temp';
      }
    }
    if (temp.startsWith(',')) {
      temp.ccRemoveFirst();
    }

    String result = '$temp${decimalStr == null ? '' : '.$decimalStr'}';
    while (result.endsWith('0')) {
      result = result.ccRemoveLast();
      if (result.endsWith('.')) {
        result = result.ccRemoveLast();
        break;
      }
    }
    return result;
  }
}
