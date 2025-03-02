import 'package:flutter/material.dart';

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

  String _clipBoard = '';
  String get clipBoard => _clipBoard;
  set clipBoard(String value) {
    _clipBoard = value;
  }

  String _nodeText = '';
  String get nodeText => _nodeText;
  set nodeText(String value) {
    _nodeText = value;
  }

  int _nodeID = 0;
  int get nodeID => _nodeID;
  set nodeID(int value) {
    _nodeID = value;
  }

  String _adjustedPrompt = '';
  String get adjustedPrompt => _adjustedPrompt;
  set adjustedPrompt(String value) {
    _adjustedPrompt = value;
  }

  dynamic _WorkingDocument;
  dynamic get WorkingDocument => _WorkingDocument;
  set WorkingDocument(dynamic value) {
    _WorkingDocument = value;
  }

  dynamic _JsonDocument;
  dynamic get JsonDocument => _JsonDocument;
  set JsonDocument(dynamic value) {
    _JsonDocument = value;
  }

  dynamic _JsonDocumen2;
  dynamic get JsonDocumen2 => _JsonDocumen2;
  set JsonDocumen2(dynamic value) {
    _JsonDocumen2 = value;
  }

  String _JsonDocument3 = '';
  String get JsonDocument3 => _JsonDocument3;
  set JsonDocument3(String value) {
    _JsonDocument3 = value;
  }

  String _APICallFuture = '';
  String get APICallFuture => _APICallFuture;
  set APICallFuture(String value) {
    _APICallFuture = value;
  }

  bool _APICallComplete = false;
  bool get APICallComplete => _APICallComplete;
  set APICallComplete(bool value) {
    _APICallComplete = value;
  }

  bool _documentUpdateSucces = false;
  bool get documentUpdateSucces => _documentUpdateSucces;
  set documentUpdateSucces(bool value) {
    _documentUpdateSucces = value;
  }

  String _inputQuery = '';
  String get inputQuery => _inputQuery;
  set inputQuery(String value) {
    _inputQuery = value;
  }

  bool _NotebookLLM = false;
  bool get NotebookLLM => _NotebookLLM;
  set NotebookLLM(bool value) {
    _NotebookLLM = value;
  }
}
