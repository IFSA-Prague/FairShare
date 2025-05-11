import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _selectedHousehold =
          prefs.getString('ff_selectedHousehold')?.ref ?? _selectedHousehold;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  DocumentReference? _selectedHousehold;
  DocumentReference? get selectedHousehold => _selectedHousehold;
  set selectedHousehold(DocumentReference? value) {
    _selectedHousehold = value;
    value != null
        ? prefs.setString('ff_selectedHousehold', value.path)
        : prefs.remove('ff_selectedHousehold');
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
