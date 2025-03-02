// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class JsonDocumentFormatStruct extends BaseStruct {
  JsonDocumentFormatStruct({
    String? title,
    int? nodeID,
    int? parentNodeID,
    int? order,
    bool? selected,
    String? text,
    JsonDocumentFormatStruct? children,
  })  : _title = title,
        _nodeID = nodeID,
        _parentNodeID = parentNodeID,
        _order = order,
        _selected = selected,
        _text = text,
        _children = children;

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
  JsonDocumentFormatStruct? _children;
  JsonDocumentFormatStruct get children =>
      _children ?? JsonDocumentFormatStruct();
  set children(JsonDocumentFormatStruct? val) => _children = val;

  void updateChildren(Function(JsonDocumentFormatStruct) updateFn) {
    updateFn(_children ??= JsonDocumentFormatStruct());
  }

  bool hasChildren() => _children != null;

  static JsonDocumentFormatStruct fromMap(Map<String, dynamic> data) =>
      JsonDocumentFormatStruct(
        title: data['title'] as String?,
        nodeID: castToType<int>(data['nodeID']),
        parentNodeID: castToType<int>(data['parentNodeID']),
        order: castToType<int>(data['order']),
        selected: data['selected'] as bool?,
        text: data['text'] as String?,
        children: data['children'] is JsonDocumentFormatStruct
            ? data['children']
            : JsonDocumentFormatStruct.maybeFromMap(data['children']),
      );

  static JsonDocumentFormatStruct? maybeFromMap(dynamic data) => data is Map
      ? JsonDocumentFormatStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'title': _title,
        'nodeID': _nodeID,
        'parentNodeID': _parentNodeID,
        'order': _order,
        'selected': _selected,
        'text': _text,
        'children': _children?.toMap(),
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
        ),
      }.withoutNulls;

  static JsonDocumentFormatStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      JsonDocumentFormatStruct(
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
        children: deserializeStructParam(
          data['children'],
          ParamType.DataStruct,
          false,
          structBuilder: JsonDocumentFormatStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'JsonDocumentFormatStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is JsonDocumentFormatStruct &&
        title == other.title &&
        nodeID == other.nodeID &&
        parentNodeID == other.parentNodeID &&
        order == other.order &&
        selected == other.selected &&
        text == other.text &&
        children == other.children;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([title, nodeID, parentNodeID, order, selected, text, children]);
}

JsonDocumentFormatStruct createJsonDocumentFormatStruct({
  String? title,
  int? nodeID,
  int? parentNodeID,
  int? order,
  bool? selected,
  String? text,
  JsonDocumentFormatStruct? children,
}) =>
    JsonDocumentFormatStruct(
      title: title,
      nodeID: nodeID,
      parentNodeID: parentNodeID,
      order: order,
      selected: selected,
      text: text,
      children: children ?? JsonDocumentFormatStruct(),
    );
