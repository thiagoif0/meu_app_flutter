import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ConteudoHomeRecord extends FirestoreRecord {
  ConteudoHomeRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "titulo" field.
  String? _titulo;
  String get titulo => _titulo ?? '';
  bool hasTitulo() => _titulo != null;

  // "subtitulo" field.
  String? _subtitulo;
  String get subtitulo => _subtitulo ?? '';
  bool hasSubtitulo() => _subtitulo != null;

  // "imagemBanner" field.
  String? _imagemBanner;
  String get imagemBanner => _imagemBanner ?? '';
  bool hasImagemBanner() => _imagemBanner != null;

  void _initializeFields() {
    _titulo = snapshotData['titulo'] as String?;
    _subtitulo = snapshotData['subtitulo'] as String?;
    _imagemBanner = snapshotData['imagemBanner'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ConteudoHome');

  static Stream<ConteudoHomeRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ConteudoHomeRecord.fromSnapshot(s));

  static Future<ConteudoHomeRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ConteudoHomeRecord.fromSnapshot(s));

  static ConteudoHomeRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ConteudoHomeRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ConteudoHomeRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ConteudoHomeRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ConteudoHomeRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ConteudoHomeRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createConteudoHomeRecordData({
  String? titulo,
  String? subtitulo,
  String? imagemBanner,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'titulo': titulo,
      'subtitulo': subtitulo,
      'imagemBanner': imagemBanner,
    }.withoutNulls,
  );

  return firestoreData;
}

class ConteudoHomeRecordDocumentEquality
    implements Equality<ConteudoHomeRecord> {
  const ConteudoHomeRecordDocumentEquality();

  @override
  bool equals(ConteudoHomeRecord? e1, ConteudoHomeRecord? e2) {
    return e1?.titulo == e2?.titulo &&
        e1?.subtitulo == e2?.subtitulo &&
        e1?.imagemBanner == e2?.imagemBanner;
  }

  @override
  int hash(ConteudoHomeRecord? e) =>
      const ListEquality().hash([e?.titulo, e?.subtitulo, e?.imagemBanner]);

  @override
  bool isValidKey(Object? o) => o is ConteudoHomeRecord;
}
