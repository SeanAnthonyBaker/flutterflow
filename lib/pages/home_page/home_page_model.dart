import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (getSuperbaseDocuments)] action in HomePage widget.
  ApiCallResponse? apiResult2dg;
  // State field(s) for promptInput widget.
  FocusNode? promptInputFocusNode;
  TextEditingController? promptInputTextController;
  String? Function(BuildContext, String?)? promptInputTextControllerValidator;
  // Stores action output result for [Backend Call - API (NotebookLLM Query)] action in IconButton widget.
  ApiCallResponse? apiResultnsz;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // Stores action output result for [Backend Call - API (NotebookLLM Driver Setup)] action in IconButton widget.
  ApiCallResponse? apiResultxgp;
  // Stores action output result for [Backend Call - API (getNotebookLLMresponse)] action in Button widget.
  ApiCallResponse? apiResultxj9;
  // Stores action output result for [Backend Call - API (getGeminiResponse)] action in Button widget.
  ApiCallResponse? apiResultzff;
  // Stores action output result for [Backend Call - API (getGeminiResponse)] action in Button widget.
  ApiCallResponse? apiResultx05;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    promptInputFocusNode?.dispose();
    promptInputTextController?.dispose();

    textFieldFocusNode1?.dispose();
    textController2?.dispose();

    textFieldFocusNode2?.dispose();
    textController3?.dispose();
  }
}
