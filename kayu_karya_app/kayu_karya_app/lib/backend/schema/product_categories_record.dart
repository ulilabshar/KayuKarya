import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductCategoriesRecord extends FirestoreRecord {
  ProductCategoriesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nama" field.
  String? _nama;
  String get nama => _nama ?? '';
  bool hasNama() => _nama != null;

  // "deskripsi" field.
  String? _deskripsi;
  String get deskripsi => _deskripsi ?? '';
  bool hasDeskripsi() => _deskripsi != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  void _initializeFields() {
    _nama = snapshotData['nama'] as String?;
    _deskripsi = snapshotData['deskripsi'] as String?;
    _image = snapshotData['image'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('product-categories');

  static Stream<ProductCategoriesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProductCategoriesRecord.fromSnapshot(s));

  static Future<ProductCategoriesRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => ProductCategoriesRecord.fromSnapshot(s));

  static ProductCategoriesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProductCategoriesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProductCategoriesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProductCategoriesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProductCategoriesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProductCategoriesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProductCategoriesRecordData({
  String? nama,
  String? deskripsi,
  String? image,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nama': nama,
      'deskripsi': deskripsi,
      'image': image,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProductCategoriesRecordDocumentEquality
    implements Equality<ProductCategoriesRecord> {
  const ProductCategoriesRecordDocumentEquality();

  @override
  bool equals(ProductCategoriesRecord? e1, ProductCategoriesRecord? e2) {
    return e1?.nama == e2?.nama &&
        e1?.deskripsi == e2?.deskripsi &&
        e1?.image == e2?.image;
  }

  @override
  int hash(ProductCategoriesRecord? e) =>
      const ListEquality().hash([e?.nama, e?.deskripsi, e?.image]);

  @override
  bool isValidKey(Object? o) => o is ProductCategoriesRecord;
}
