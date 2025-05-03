import '/components/display_tree_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'hierachy_maintenance_widget.dart' show HierachyMaintenanceWidget;
import 'package:flutter/material.dart';

class HierachyMaintenanceModel
    extends FlutterFlowModel<HierachyMaintenanceWidget> {
  ///  State fields for stateful widgets in this page.

  // Models for DisplayTree dynamic component.
  FlutterFlowDynamicModels<DisplayTreeModel>? _displayTreeModels;
  FlutterFlowDynamicModels<DisplayTreeModel> get displayTreeModels =>
      _displayTreeModels ??= FlutterFlowDynamicModels(() => DisplayTreeModel());

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    displayTreeModels.dispose();
  }
}
