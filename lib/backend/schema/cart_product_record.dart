import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CartProductRecord extends FirestoreRecord {
  CartProductRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "deskripsi" field.
  String? _deskripsi;
  String get deskripsi => _deskripsi ?? '';
  bool hasDeskripsi() => _deskripsi != null;

  // "gambar" field.
  String? _gambar;
  String get gambar => _gambar ?? '';
  bool hasGambar() => _gambar != null;

  // "nama" field.
  String? _nama;
  String get nama => _nama ?? '';
  bool hasNama() => _nama != null;

  void _initializeFields() {
    _deskripsi = snapshotData['deskripsi'] as String?;
    _gambar = snapshotData['gambar'] as String?;
    _nama = snapshotData['nama'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('cart-product');

  static Stream<CartProductRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CartProductRecord.fromSnapshot(s));

  static Future<CartProductRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CartProductRecord.fromSnapshot(s));

  static CartProductRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CartProductRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CartProductRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CartProductRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CartProductRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CartProductRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCartProductRecordData({
  String? deskripsi,
  String? gambar,
  String? nama,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'deskripsi': deskripsi,
      'gambar': gambar,
      'nama': nama,
    }.withoutNulls,
  );

  return firestoreData;
}

class CartProductRecordDocumentEquality implements Equality<CartProductRecord> {
  const CartProductRecordDocumentEquality();

  @override
  bool equals(CartProductRecord? e1, CartProductRecord? e2) {
    return e1?.deskripsi == e2?.deskripsi &&
        e1?.gambar == e2?.gambar &&
        e1?.nama == e2?.nama;
  }

  @override
  int hash(CartProductRecord? e) =>
      const ListEquality().hash([e?.deskripsi, e?.gambar, e?.nama]);

  @override
  bool isValidKey(Object? o) => o is CartProductRecord;
}
