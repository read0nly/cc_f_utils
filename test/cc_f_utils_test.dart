import 'package:cc_f_utils/cc_f_utils.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('test nextMonth', () {
    DateTime time = DateTime.now();
    print(time.nextMonth(-1));
  });
}
