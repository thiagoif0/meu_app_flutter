import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ServicosRecord extends FirestoreRecord {
  ServicosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "clienteID" field.
  DocumentReference? _clienteID;
  DocumentReference? get clienteID => _clienteID;
  bool hasClienteID() => _clienteID != null;

  // "fazendaID" field.
  DocumentReference? _fazendaID;
  DocumentReference? get fazendaID => _fazendaID;
  bool hasFazendaID() => _fazendaID != null;

  // "tipoServico" field.
  String? _tipoServico;
  String get tipoServico => _tipoServico ?? '';
  bool hasTipoServico() => _tipoServico != null;

  // "hectares" field.
  double? _hectares;
  double get hectares => _hectares ?? 0.0;
  bool hasHectares() => _hectares != null;

  // "dataServico" field.
  DateTime? _dataServico;
  DateTime? get dataServico => _dataServico;
  bool hasDataServico() => _dataServico != null;

  // "fotos" field.
  List<String>? _fotos;
  List<String> get fotos => _fotos ?? const [];
  bool hasFotos() => _fotos != null;

  // "videos" field.
  List<String>? _videos;
  List<String> get videos => _videos ?? const [];
  bool hasVideos() => _videos != null;

  // "statusPagamento" field.
  String? _statusPagamento;
  String get statusPagamento => _statusPagamento ?? '';
  bool hasStatusPagamento() => _statusPagamento != null;

  // "formaPagamento" field.
  String? _formaPagamento;
  String get formaPagamento => _formaPagamento ?? '';
  bool hasFormaPagamento() => _formaPagamento != null;

  // "valor" field.
  double? _valor;
  double get valor => _valor ?? 0.0;
  bool hasValor() => _valor != null;

  // "cliente" field.
  String? _cliente;
  String get cliente => _cliente ?? '';
  bool hasCliente() => _cliente != null;

  // "fazenda" field.
  String? _fazenda;
  String get fazenda => _fazenda ?? '';
  bool hasFazenda() => _fazenda != null;

  void _initializeFields() {
    _clienteID = snapshotData['clienteID'] as DocumentReference?;
    _fazendaID = snapshotData['fazendaID'] as DocumentReference?;
    _tipoServico = snapshotData['tipoServico'] as String?;
    _hectares = castToType<double>(snapshotData['hectares']);
    _dataServico = snapshotData['dataServico'] as DateTime?;
    _fotos = getDataList(snapshotData['fotos']);
    _videos = getDataList(snapshotData['videos']);
    _statusPagamento = snapshotData['statusPagamento'] as String?;
    _formaPagamento = snapshotData['formaPagamento'] as String?;
    _valor = castToType<double>(snapshotData['valor']);
    _cliente = snapshotData['cliente'] as String?;
    _fazenda = snapshotData['fazenda'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('servicos');

  static Stream<ServicosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ServicosRecord.fromSnapshot(s));

  static Future<ServicosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ServicosRecord.fromSnapshot(s));

  static ServicosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ServicosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ServicosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ServicosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ServicosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ServicosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createServicosRecordData({
  DocumentReference? clienteID,
  DocumentReference? fazendaID,
  String? tipoServico,
  double? hectares,
  DateTime? dataServico,
  String? statusPagamento,
  String? formaPagamento,
  double? valor,
  String? cliente,
  String? fazenda,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'clienteID': clienteID,
      'fazendaID': fazendaID,
      'tipoServico': tipoServico,
      'hectares': hectares,
      'dataServico': dataServico,
      'statusPagamento': statusPagamento,
      'formaPagamento': formaPagamento,
      'valor': valor,
      'cliente': cliente,
      'fazenda': fazenda,
    }.withoutNulls,
  );

  return firestoreData;
}

class ServicosRecordDocumentEquality implements Equality<ServicosRecord> {
  const ServicosRecordDocumentEquality();

  @override
  bool equals(ServicosRecord? e1, ServicosRecord? e2) {
    const listEquality = ListEquality();
    return e1?.clienteID == e2?.clienteID &&
        e1?.fazendaID == e2?.fazendaID &&
        e1?.tipoServico == e2?.tipoServico &&
        e1?.hectares == e2?.hectares &&
        e1?.dataServico == e2?.dataServico &&
        listEquality.equals(e1?.fotos, e2?.fotos) &&
        listEquality.equals(e1?.videos, e2?.videos) &&
        e1?.statusPagamento == e2?.statusPagamento &&
        e1?.formaPagamento == e2?.formaPagamento &&
        e1?.valor == e2?.valor &&
        e1?.cliente == e2?.cliente &&
        e1?.fazenda == e2?.fazenda;
  }

  @override
  int hash(ServicosRecord? e) => const ListEquality().hash([
        e?.clienteID,
        e?.fazendaID,
        e?.tipoServico,
        e?.hectares,
        e?.dataServico,
        e?.fotos,
        e?.videos,
        e?.statusPagamento,
        e?.formaPagamento,
        e?.valor,
        e?.cliente,
        e?.fazenda
      ]);

  @override
  bool isValidKey(Object? o) => o is ServicosRecord;
}
