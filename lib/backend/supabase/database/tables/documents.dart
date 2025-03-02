import '../database.dart';

class DocumentsTable extends SupabaseTable<DocumentsRow> {
  @override
  String get tableName => 'documents';

  @override
  DocumentsRow createRow(Map<String, dynamic> data) => DocumentsRow(data);
}

class DocumentsRow extends SupabaseDataRow {
  DocumentsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => DocumentsTable();

  int get nodeID => getField<int>('nodeID')!;
  set nodeID(int value) => setField<int>('nodeID', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get title => getField<String>('title');
  set title(String? value) => setField<String>('title', value);

  int? get order => getField<int>('order');
  set order(int? value) => setField<int>('order', value);

  bool? get selected => getField<bool>('selected');
  set selected(bool? value) => setField<bool>('selected', value);

  String? get text => getField<String>('text');
  set text(String? value) => setField<String>('text', value);

  int? get parentNodeID => getField<int>('parentNodeID');
  set parentNodeID(int? value) => setField<int>('parentNodeID', value);

  int get docid => getField<int>('docid')!;
  set docid(int value) => setField<int>('docid', value);
}
