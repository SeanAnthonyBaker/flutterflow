// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DocumentStructureStruct extends BaseStruct {
  DocumentStructureStruct({
    List<GetDocumentsJsonStruct>? getDocumentsJson,
  }) : _getDocumentsJson = getDocumentsJson;

  // "get_documents_json" field.
  List<GetDocumentsJsonStruct>? _getDocumentsJson;
  List<GetDocumentsJsonStruct> get getDocumentsJson =>
      _getDocumentsJson ?? const [];
  set getDocumentsJson(List<GetDocumentsJsonStruct>? val) =>
      _getDocumentsJson = val;

  void updateGetDocumentsJson(Function(List<GetDocumentsJsonStruct>) updateFn) {
    updateFn(_getDocumentsJson ??= []);
  }

  bool hasGetDocumentsJson() => _getDocumentsJson != null;

  static DocumentStructureStruct fromMap(Map<String, dynamic> data) =>
      DocumentStructureStruct(
        getDocumentsJson: getStructList(
          data['get_documents_json'],
          GetDocumentsJsonStruct.fromMap,
        ),
      );

  static DocumentStructureStruct? maybeFromMap(dynamic data) => data is Map
      ? DocumentStructureStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'get_documents_json': _getDocumentsJson?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'get_documents_json': serializeParam(
          _getDocumentsJson,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static DocumentStructureStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      DocumentStructureStruct(
        getDocumentsJson: deserializeStructParam<GetDocumentsJsonStruct>(
          data['get_documents_json'],
          ParamType.DataStruct,
          true,
          structBuilder: GetDocumentsJsonStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'DocumentStructureStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is DocumentStructureStruct &&
        listEquality.equals(getDocumentsJson, other.getDocumentsJson);
  }

  @override
  int get hashCode => const ListEquality().hash([getDocumentsJson]);
}

DocumentStructureStruct createDocumentStructureStruct() =>
    DocumentStructureStruct();
