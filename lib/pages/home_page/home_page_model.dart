import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
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
  // State field(s) for NotebookLMContainer widget.
  FocusNode? notebookLMContainerFocusNode;
  TextEditingController? notebookLMContainerTextController;
  String? Function(BuildContext, String?)?
      notebookLMContainerTextControllerValidator;
  // Stores action output result for [Backend Call - API (NotebooklmDriverSetup)] action in ReadLM widget.
  ApiCallResponse? apiResultwx5;
  // Stores action output result for [Backend Call - API (NotebooklmDriverClose)] action in CloseLM widget.
  ApiCallResponse? apiResult0yw;
  // Stores action output result for [Backend Call - API (getGeminiResponse)] action in Button widget.
  ApiCallResponse? apiResultx05;
  // Stores action output result for [Backend Call - API (NotebooklmQuery)] action in Button widget.
  ApiCallResponse? apiResulthog;
  // Stores action output result for [Backend Call - API (testAPIService)] action in Button widget.
  ApiCallResponse? apiResultv1g;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    promptInputFocusNode?.dispose();
    promptInputTextController?.dispose();

    notebookLMContainerFocusNode?.dispose();
    notebookLMContainerTextController?.dispose();
  }
}
