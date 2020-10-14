import 'package:cc_f_utils/cc_f_utils.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('test nextMonth', () {
    DateTime time = DateTime.now();
    print(time.ccNextMonth(-1));
  });

  test('ccCommaNum', () {
    double number1 = 123456.000001;
    expect(number1.ccToCommaStr(), '123,456');

    double number2 = 123456.000000;
    expect(number2.ccToCommaStr(), '123,456');

    double number3 = 123456.01;
    expect(number3.ccToCommaStr(), '123,456.01');

    double number4 = 12345678;
    expect(number4.ccToCommaStr(), '12,345,678');

    double number5 = 1;
    expect(number5.ccToCommaStr(), '1');

    double number6 = 12;
    expect(number6.ccToCommaStr(), '12');

    double number7 = 123;
    expect(number7.ccToCommaStr(), '123');

    double number8 = 1234;
    expect(number8.ccToCommaStr(), '1,234');

    double number9 = 1.1;
    expect(number9.ccToCommaStr(), '1.1');

    double number10 = 1.12;
    expect(number10.ccToCommaStr(), '1.12');

    double number11 = 1.123;
    expect(number11.ccToCommaStr(), '1.12');

    double number12 = 0.1;
    expect(number12.ccToCommaStr(), '0.1');

    double number13 = 0.12;
    expect(number13.ccToCommaStr(), '0.12');

    double number14 = 0.123;
    expect(number14.ccToCommaStr(), '0.12');

    double number15 = 0.1234;
    expect(number15.ccToCommaStr(), '0.12');

    double number16 = 0.00001;
    expect(number16.ccToCommaStr(), '0');

    double number17 = 0.00000;
    expect(number17.ccToCommaStr(), '0');

    double number18 = 0.1264;
    expect(number18.ccToCommaStr(), '0.13');
  });

  test('parseBool', () {
    expect(CCDataFilter.parseBool('sdkfa'), false);
    expect(CCDataFilter.parseBool('0'), false);
    expect(CCDataFilter.parseBool(0), false);
    expect(CCDataFilter.parseBool(null), false);
    expect(CCDataFilter.parseBool('true'), true);
    expect(CCDataFilter.parseBool('yes'), true);
    expect(CCDataFilter.parseBool('YES'), true);
    expect(CCDataFilter.parseBool('TRUE'), true);
    expect(CCDataFilter.parseBool('1293'), true);
    expect(CCDataFilter.parseBool('-1'), true);
  });
}
