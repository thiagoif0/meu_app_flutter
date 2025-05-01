import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FinanceiroRecord extends FirestoreRecord {
  FinanceiroRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "tipo" field.
  String? _tipo;
  String get tipo => _tipo ?? '';
  bool hasTipo() => _tipo != null;

  // "descricao" field.
  String? _descricao;
  String get descricao => _descricao ?? '';
  bool hasDescricao() => _descricao != null;

  // "valor" field.
  double? _valor;
  double get valor => _valor ?? 0.0;
  bool hasValor() => _valor != null;

  // "data" field.
  DateTime? _data;
  DateTime? get data => _data;
  bool hasData() => _data != null;

  // "relacionadoServicoID" field.
  DocumentReference? _relacionadoServicoID;
  DocumentReference? get relacionadoServicoID => _relacionadoServicoID;
  bool hasRelacionadoServicoID() => _relacionadoServicoID != null;

  void _initializeFields() {
    _tipo = snapshotData['tipo'] as String?;
    _descricao = snapshotData['descricao'] as String?;
    _valor = castToType<double>(snapshotData['valor']);
    _data = snapshotData['data'] as DateTime?;
    _relacionadoServicoID =
        snapshotData['relacionadoServicoID'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('financeiro');

  static Stream<FinanceiroRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FinanceiroRecord.fromSnapshot(s));

  static Future<FinanceiroRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FinanceiroRecord.fromSnapshot(s));

  static FinanceiroRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FinanceiroRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FinanceiroRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FinanceiroRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FinanceiroRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FinanceiroRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFinanceiroRecordData({
  String? tipo,
  String? descricao,
  double? valor,
  DateTime? data,
  DocumentReference? relacionadoServicoID,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'tipo': tipo,
      'descricao': descricao,
      'valor': valor,
      'data': data,
      'relacionadoServicoID': relacionadoServicoID,
    }.withoutNulls,
  );

  return firestoreData;
}

class FinanceiroRecordDocumentEquality implements Equality<FinanceiroRecord> {
  const FinanceiroRecordDocumentEquality();

  @override
  bool equals(FinanceiroRecord? e1, FinanceiroRecord? e2) {
    return e1?.tipo == e2?.tipo &&
        e1?.descricao == e2?.descricao &&
        e1?.valor == e2?.valor &&
        e1?.data == e2?.data &&
        e1?.relacionadoServicoID == e2?.relacionadoServicoID;
  }

  @override
  int hash(FinanceiroRecord? e) => const ListEquality().hash(
      [e?.tipo, e?.descricao, e?.valor, e?.data, e?.relacionadoServicoID]);

  @override
  bool isValidKey(Object? o) => o is FinanceiroRecord;
}
