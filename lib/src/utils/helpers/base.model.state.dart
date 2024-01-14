import 'package:flutter_test_app/src/constants/app.enums.dart';

class BaseModelState<T> {
  ModelState _state = ModelState.initial;
  T? _data;
  String? _errorMessage;

  ModelState get state => _state;
  T? get data => _data;
  String? get errorMessage => _errorMessage;

  void loading() {
    _state = ModelState.loading;
    _data = null;
    _errorMessage = null;
  }

  void success(T data) {
    _state = ModelState.success;
    this._data = data;
    _errorMessage = null;
  }

  void error(String errorMessage) {
    _state = ModelState.error;
    _data = null;
    this._errorMessage = errorMessage;
  }

  void reset() {
    _state = ModelState.initial;
    _data = null;
    _errorMessage = null;
  }
}
