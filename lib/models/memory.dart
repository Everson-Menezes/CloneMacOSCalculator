class Memory {
  String _value = "0";

  String getValue() {
    return _value;
  }

  void setValue(String value) {
    if (value == "Clear") {
      clearMemory();
    } else if (value == "<=") {
      clearLast();
    } else if (_value[0] == "0" && _value.length == 1) {
      _value = value;
    } else {
      _value += value;
    }
  }

  void clearMemory() {
    _value = "0";
  }

  void clearLast() {
    if (_value.length > 0 && _value != "0") {
      _value = _value.substring(0, _value.length - 1);
      getValue();
    }
    if (_value == "") {
      _value = "0";
    }
  }
}
