import 'dart:convert';

class Memory {
  String _value = "0";
  String _historyValue = "0";
  String operation = "";
  String auxOperation = "";
  bool resultExpression = false;
  List<double> _memoryValue = [0.0, 0.0];
  String getValue() {
    return _value;
  }

  String getHistoryValue() {
    return _historyValue;
  }

  void setValue(String value) {
    if (value == "Clear") {
      clearMemory();
    } else if (value == "<=") {
      clearLast();
    } else if (value == ".") {
      _value = value;
    } else if (value == "=") {
      resultExpression = true;
      _value = total();
    } else if (_value[0] == "0" && _value.length == 1) {
      _value = value;
    } else if (!valueIsNumber(value)) {
      auxOperation = value;
      operation = auxOperation;
      calculate(_value, auxOperation);
    } else {
      _value += value;
    }
  }

  void clearMemory() {
    _value = "0";
    _historyValue = "0";
    _memoryValue[0] = 0.0;
    _memoryValue[1] = 0.0;
    resultExpression = false;
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

  void calculate(String array, String option) {
    if (resultExpression) {
      _memoryValue[1] = result(double.parse(array), option, double.parse(_value));
      return;
    }
    if (_memoryValue[0] != 0) {
      _historyValue += array + option;
      _memoryValue[1] = double.parse(array);
      operation = option;
      _memoryValue[0] = result(_memoryValue[0], operation, _memoryValue[1]);
      _value = "0";
    } else {
      _memoryValue[0] = double.parse(array);
      _historyValue = array + option;
      _value = "0";
    }
  }

  bool valueIsNumber(String value) {
    List<int> numbers = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
    if (numbers.contains(int.tryParse(value))) {
      return true;
    } else {
      return false;
    }
  }

  double result(double memoryValue, String operation, double memoryValue2) {
    switch (operation) {
      case '+':
        return memoryValue + memoryValue2;

      case '-':
        return memoryValue - memoryValue2;

      case 'x':
        return memoryValue * memoryValue2;

      case '/':
        return memoryValue / memoryValue2;
      default:
        return 0.0;
    }
  }

  String total() {
    _historyValue;
    _memoryValue[0];
    _memoryValue[1];

    var auxExpression = _historyValue.substring(_historyValue.length - 1);
    if (auxExpression == "x") {
      _memoryValue[0] = result(_memoryValue[0], "/", _memoryValue[1]);
    }
    if (auxExpression == "/") {
      _memoryValue[0] = result(_memoryValue[0], "x", _memoryValue[1]);
    }

    _memoryValue[1] = result(_memoryValue[1], auxOperation, double.parse(_value));
    _memoryValue[0] += _memoryValue[1];
    _historyValue += _value;

    return _memoryValue[0].toString();
  }
}
