import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import 'backend/api_requests/api_manager.dart';
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

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  String _role = '';
  String get role => _role;
  set role(String _value) {
    _role = _value;
  }

  String _token = '';
  String get token => _token;
  set token(String _value) {
    _token = _value;
  }

  String _course = '';
  String get course => _course;
  set course(String _value) {
    _course = _value;
  }

  String _insertcours = '';
  String get insertcours => _insertcours;
  set insertcours(String _value) {
    _insertcours = _value;
  }

  String _image = '';
  String get image => _image;
  set image(String _value) {
    _image = _value;
  }

  String _assigmentaiinset = '';
  String get assigmentaiinset => _assigmentaiinset;
  set assigmentaiinset(String _value) {
    _assigmentaiinset = _value;
  }

  String _assigmentai = '';
  String get assigmentai => _assigmentai;
  set assigmentai(String _value) {
    _assigmentai = _value;
  }

  String _Aisumbit = '';
  String get Aisumbit => _Aisumbit;
  set Aisumbit(String _value) {
    _Aisumbit = _value;
  }

  String _Aisubmitinsert = '';
  String get Aisubmitinsert => _Aisubmitinsert;
  set Aisubmitinsert(String _value) {
    _Aisubmitinsert = _value;
  }

  DocumentReference? _building;
  DocumentReference? get building => _building;
  set building(DocumentReference? _value) {
    _building = _value;
  }

  DocumentReference? _school;
  DocumentReference? get school => _school;
  set school(DocumentReference? _value) {
    _school = _value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
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
