extension CCRemoveString on String {
  String ccRemoveHead(int len) {
    if (len >= this.length) {
      return '';
    }

    return this.substring(len);
  }

  String ccRemoveTail(int len) {
    if (len >= this.length) {
      return '';
    }

    return this.substring(0, this.length - len);
  }

  String ccRemoveFirst() {
    return this.ccRemoveHead(1);
  }

  String ccRemoveLast() {
    return this.ccRemoveTail(1);
  }

  String ccGetChar(int index) {
    if (index < 0 || index > length - 1) {
      return null;
    }
    return substring(index, index + 1);
  }
}

extension HideChinaMobilePhone on String {
  /// 隐藏部分11位数的手机号码
  String ccHideChinaMobilePhone() {
    if (this == null || this.isEmpty) {
      return '';
    }
    String pre = '';
    String sub = '';
    try {
      pre = this.substring(0, 4);
    } catch (e) {}
    try {
      sub = this.substring(this.length - 4);
    } catch (e) {}

    return pre + '****' + sub;
  }
}

extension HideBankCardNum on String {
  String ccHideBankCardNum() {
    if (this == null || this.isEmpty) {
      return '';
    }
    if (this.length < 4) {
      return '';
    }
    final int length = this.length;
    final int replaceLength = length - 4;
    final String replacement =
        List<String>.generate((replaceLength / 4).ceil(), (int _) => '**** ')
            .join('');
    return this.replaceRange(0, replaceLength, replacement);
  }
}
