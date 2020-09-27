extension CCRemoveString on String {
  String removeHead(int len) {
    if (len >= this.length) {
      return '';
    }

    return this.substring(len);
  }

  String removeTail(int len) {
    if (len >= this.length) {
      return '';
    }

    return this.substring(0, this.length - len);
  }

  String removeFirst() {
    return this.removeHead(1);
  }

  String removeLast() {
    return this.removeTail(1);
  }

  String getChar(int index) {
    if (index < 0 || index > length - 1) {
      return null;
    }
    return substring(index, index + 1);
  }
}

extension HideChinaMobilePhone on String {
  /// 隐藏部分11位数的手机号码
  String hideChinaMobilePhone() {
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
  String hideBankCardNum() {
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
