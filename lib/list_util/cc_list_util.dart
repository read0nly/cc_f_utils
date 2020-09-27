class CCListUtil {
  /// 分割列表为指定长度
  static List<List<T>> splitList<T>(List<T> list, int len) {
    if (len <= 1) {
      return [list];
    }

    List<List<T>> result = List();
    int index = 1;

    while (true) {
      if (index * len < list.length) {
        List<T> temp = list.skip((index - 1) * len).take(len).toList();
        result.add(temp);
        index++;
        continue;
      }
      List<T> temp = list.skip((index - 1) * len).toList();
      result.add(temp);
      break;
    }
    return result;
  }

  /// 计算list 里面的最大值
  static T maxOfList<T extends num>(List<T> list) {
    if (list.length <= 1) {
      return list.first ?? 0;
    }
    var value = list.first;
    list.skip(1).forEach((item) {
      if (item > value) {
        value = item;
      }
    });

    return value;
  }

  /// 计算list 里面的最大值
  static T minOfList<T extends num>(List<T> list) {
    if (list.length <= 1) {
      return list.first ?? 0;
    }
    var value = list.first;
    list.skip(1).forEach((item) {
      if (item < value) {
        value = item;
      }
    });

    return value;
  }
}
