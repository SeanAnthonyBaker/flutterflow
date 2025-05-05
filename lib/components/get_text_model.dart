import '/flutter_flow/flutter_flow_util.dart';
import 'get_text_widget.dart' show GetTextWidget;
import 'package:flutter/material.dart';

class GetTextModel extends FlutterFlowModel<GetTextWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
