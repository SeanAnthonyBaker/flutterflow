import '/components/display_tree_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'display_tree_widget.dart' show DisplayTreeWidget;
import 'package:flutter/material.dart';

class DisplayTreeModel extends FlutterFlowModel<DisplayTreeWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Title widget.
  FocusNode? titleFocusNode;
  TextEditingController? titleTextController;
  String? Function(BuildContext, String?)? titleTextControllerValidator;
  // Models for DisplayTree dynamic component.
  FlutterFlowDynamicModels<DisplayTreeModel>? _displayTreeModels;
  FlutterFlowDynamicModels<DisplayTreeModel> get displayTreeModels =>
      _displayTreeModels ??= FlutterFlowDynamicModels(() => DisplayTreeModel());

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    titleFocusNode?.dispose();
    titleTextController?.dispose();

    displayTreeModels.dispose();
  }
}
