import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dropdown01_options_widget.dart' show Dropdown01OptionsWidget;
import 'package:flutter/material.dart';

class Dropdown01OptionsModel extends FlutterFlowModel<Dropdown01OptionsWidget> {
  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (createNode)] action in option widget.
  ApiCallResponse? apiResultvsb;
  // State field(s) for titla widget.
  FocusNode? titlaFocusNode;
  TextEditingController? titlaTextController;
  String? Function(BuildContext, String?)? titlaTextControllerValidator;
  // Stores action output result for [Backend Call - API (deleteNode)] action in Text widget.
  ApiCallResponse? apiResultgm8;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    titlaFocusNode?.dispose();
    titlaTextController?.dispose();
  }
}
