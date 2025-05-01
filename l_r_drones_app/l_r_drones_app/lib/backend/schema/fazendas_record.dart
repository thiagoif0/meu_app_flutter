import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FazendasRecord extends FirestoreRecord {
  FazendasRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "clienteID" field.
  DocumentReference? _clienteID;
  DocumentReference? get clienteID => _clienteID;
  bool hasClienteID() => _clienteID != null;

  // "nomefazenda" field.
  String? _nomefazenda;
  String get nomefazenda => _nomefazenda ?? '';
  bool hasNomefazenda() => _nomefazenda != null;

  // "localizacao" field.
  String? _localizacao;
  String get localizacao => _localizacao ?? '';
  bool hasLocalizacao() => _localizacao != null;

  void _initializeFields() {
    _clienteID = snapshotData['clienteID'] as DocumentReference?;
    _nomefazenda = snapshotData['nomefazenda'] as String?;
    _localizacao = snapshotData['localizacao'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('fazendas');

  static Stream<FazendasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FazendasRecord.fromSnapshot(s));

  static Future<FazendasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FazendasRecord.fromSnapshot(s));

  static FazendasRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FazendasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FazendasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FazendasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FazendasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FazendasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFazendasRecordData({
  DocumentReference? clienteID,
  String? nomefazenda,
  String? localizacao,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'clienteID': clienteID,
      'nomefazenda': nomefazenda,
      'localizacao': localizacao,
    }.withoutNulls,
  );

  return firestoreData;
}

class FazendasRecordDocumentEquality implements Equality<FazendasRecord> {
  const FazendasRecordDocumentEquality();

  @override
  bool equals(FazendasRecord? e1, FazendasRecord? e2) {
    return e1?.clienteID == e2?.clienteID &&
        e1?.nomefazenda == e2?.nomefazenda &&
        e1?.localizacao == e2?.localizacao;
  }

  @override
  int hash(FazendasRecord? e) =>
      const ListEquality().hash([e?.clienteID, e?.nomefazenda, e?.localizacao]);

  @override
  bool isValidKey(Object? o) => o is FazendasRecord;
}
