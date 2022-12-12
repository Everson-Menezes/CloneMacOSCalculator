import 'dart:convert';

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
    } else if (value == "=") {
      calculate(_value);
    } else if (_value[0] == "0" && _value.length == 1) {
      _value = value;
    } else if (!valueIsNumber(value) && valueIsNumber(_value[_value.length - 1])) {
      _value += value;
    } else if (valueIsNumber(value)) {
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

  void calculate(String array) {}

  bool valueIsNumber(String value) {
    List<int> numbers = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
    if (numbers.contains(int.tryParse(value))) {
      return true;
    } else {
      return false;
    }
  }
}
