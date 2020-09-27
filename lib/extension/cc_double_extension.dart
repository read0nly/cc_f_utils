import 'cc_string_extension.dart';

extension MoneyStr on double {
  /// Format a double number into an amount string，and keep up to two decimal places.
  /// 1.01231   ->  '1.01'
  /// 1.102112  ->  '1.1'
  /// 1.001231  ->  '1'
  /// 1.009231  ->  '1.01'
  String ccToMoneyStr() {
    if (this == 0) {
      return '0';
    }
    String value = this.toStringAsFixed(2);
    if (!value.contains('.')) {
      return value;
    }
    while (value.endsWith('0')) {
      value = value.ccRemoveLast();
      if (value.endsWith('.')) {
        value = value.ccRemoveLast();
        break;
      }
    }
    return value;
  }
}
