// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChildrenStruct extends BaseStruct {
  ChildrenStruct({
    String? title,
    int? nodeID,
    int? parentNodeID,
    int? order,
    bool? selected,
    String? text,
    List<ChildrenStruct>? children,
    bool? aPIComplete,
  })  : _title = title,
        _nodeID = nodeID,
        _parentNodeID = parentNodeID,
        _order = order,
        _selected = selected,
        _text = text,
        _children = children,
        _aPIComplete = aPIComplete;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  // "nodeID" field.
  int? _nodeID;
  int get nodeID => _nodeID ?? 0;
  set nodeID(int? val) => _nodeID = val;

  void incrementNodeID(int amount) => nodeID = nodeID + amount;

  bool hasNodeID() => _nodeID != null;

  // "parentNodeID" field.
  int? _parentNodeID;
  int get parentNodeID => _parentNodeID ?? 0;
  set parentNodeID(int? val) => _parentNodeID = val;

  void incrementParentNodeID(int amount) =>
      parentNodeID = parentNodeID + amount;

  bool hasParentNodeID() => _parentNodeID != null;

  // "order" field.
  int? _order;
  int get order => _order ?? 0;
  set order(int? val) => _order = val;

  void incrementOrder(int amount) => order = order + amount;

  bool hasOrder() => _order != null;

  // "selected" field.
  bool? _selected;
  bool get selected => _selected ?? false;
  set selected(bool? val) => _selected = val;

  bool hasSelected() => _selected != null;

  // "text" field.
  String? _text;
  String get text => _text ?? '';
  set text(String? val) => _text = val;

  bool hasText() => _text != null;

  // "children" field.
  List<ChildrenStruct>? _children;
  List<ChildrenStruct> get children => _children ?? const [];
  set children(List<ChildrenStruct>? val) => _children = val;

  void updateChildren(Function(List<ChildrenStruct>) updateFn) {
    updateFn(_children ??= []);
  }

  bool hasChildren() => _children != null;

  // "APIComplete" field.
  bool? _aPIComplete;
  bool get aPIComplete => _aPIComplete ?? false;
  set aPIComplete(bool? val) => _aPIComplete = val;

  bool hasAPIComplete() => _aPIComplete != null;

  static ChildrenStruct fromMap(Map<String, dynamic> data) => ChildrenStruct(
        title: data['title'] as String?,
        nodeID: castToType<int>(data['nodeID']),
        parentNodeID: castToType<int>(data['parentNodeID']),
        order: castToType<int>(data['order']),
        selected: data['selected'] as bool?,
        text: data['text'] as String?,
        children: getStructList(
          data['children'],
          ChildrenStruct.fromMap,
        ),
        aPIComplete: data['APIComplete'] as bool?,
      );

  static ChildrenStruct? maybeFromMap(dynamic data) =>
      data is Map ? ChildrenStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'title': _title,
        'nodeID': _nodeID,
        'parentNodeID': _parentNodeID,
        'order': _order,
        'selected': _selected,
        'text': _text,
        'children': _children?.map((e) => e.toMap()).toList(),
        'APIComplete': _aPIComplete,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'nodeID': serializeParam(
          _nodeID,
          ParamType.int,
        ),
        'parentNodeID': serializeParam(
          _parentNodeID,
          ParamType.int,
        ),
        'order': serializeParam(
          _order,
          ParamType.int,
        ),
        'selected': serializeParam(
          _selected,
          ParamType.bool,
        ),
        'text': serializeParam(
          _text,
          ParamType.String,
        ),
        'children': serializeParam(
          _children,
          ParamType.DataStruct,
          isList: true,
        ),
        'APIComplete': serializeParam(
          _aPIComplete,
          ParamType.bool,
        ),
      }.withoutNulls;

  static ChildrenStruct fromSerializableMap(Map<String, dynamic> data) =>
      ChildrenStruct(
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        nodeID: deserializeParam(
          data['nodeID'],
          ParamType.int,
          false,
        ),
        parentNodeID: deserializeParam(
          data['parentNodeID'],
          ParamType.int,
          false,
        ),
        order: deserializeParam(
          data['order'],
          ParamType.int,
          false,
        ),
        selected: deserializeParam(
          data['selected'],
          ParamType.bool,
          false,
        ),
        text: deserializeParam(
          data['text'],
          ParamType.String,
          false,
        ),
        children: deserializeStructParam<ChildrenStruct>(
          data['children'],
          ParamType.DataStruct,
          true,
          structBuilder: ChildrenStruct.fromSerializableMap,
        ),
        aPIComplete: deserializeParam(
          data['APIComplete'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'ChildrenStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ChildrenStruct &&
        title == other.title &&
        nodeID == other.nodeID &&
        parentNodeID == other.parentNodeID &&
        order == other.order &&
        selected == other.selected &&
        text == other.text &&
        listEquality.equals(children, other.children) &&
        aPIComplete == other.aPIComplete;
  }

  @override
  int get hashCode => const ListEquality().hash([
        title,
        nodeID,
        parentNodeID,
        order,
        selected,
        text,
        children,
        aPIComplete
      ]);
}

ChildrenStruct createChildrenStruct({
  String? title,
  int? nodeID,
  int? parentNodeID,
  int? order,
  bool? selected,
  String? text,
  bool? aPIComplete,
}) =>
    ChildrenStruct(
      title: title,
      nodeID: nodeID,
      parentNodeID: parentNodeID,
      order: order,
      selected: selected,
      text: text,
      aPIComplete: aPIComplete,
    );
