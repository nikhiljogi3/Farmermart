import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SellerRecord extends FirestoreRecord {
  SellerRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "modified_at" field.
  DateTime? _modifiedAt;
  DateTime? get modifiedAt => _modifiedAt;
  bool hasModifiedAt() => _modifiedAt != null;

  // "quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  bool hasQuantity() => _quantity != null;

  // "productname" field.
  String? _productname;
  String get productname => _productname ?? '';
  bool hasProductname() => _productname != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  // "mobileno" field.
  int? _mobileno;
  int get mobileno => _mobileno ?? 0;
  bool hasMobileno() => _mobileno != null;

  // "images" field.
  String? _images;
  String get images => _images ?? '';
  bool hasImages() => _images != null;

  // "area" field.
  String? _area;
  String get area => _area ?? '';
  bool hasArea() => _area != null;

  void _initializeFields() {
    _price = castToType<double>(snapshotData['price']);
    _createdAt = snapshotData['created_at'] as DateTime?;
    _modifiedAt = snapshotData['modified_at'] as DateTime?;
    _quantity = castToType<int>(snapshotData['quantity']);
    _productname = snapshotData['productname'] as String?;
    _category = snapshotData['category'] as String?;
    _mobileno = castToType<int>(snapshotData['mobileno']);
    _images = snapshotData['images'] as String?;
    _area = snapshotData['area'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('seller');

  static Stream<SellerRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SellerRecord.fromSnapshot(s));

  static Future<SellerRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SellerRecord.fromSnapshot(s));

  static SellerRecord fromSnapshot(DocumentSnapshot snapshot) => SellerRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SellerRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SellerRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SellerRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SellerRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSellerRecordData({
  double? price,
  DateTime? createdAt,
  DateTime? modifiedAt,
  int? quantity,
  String? productname,
  String? category,
  int? mobileno,
  String? images,
  String? area,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'price': price,
      'created_at': createdAt,
      'modified_at': modifiedAt,
      'quantity': quantity,
      'productname': productname,
      'category': category,
      'mobileno': mobileno,
      'images': images,
      'area': area,
    }.withoutNulls,
  );

  return firestoreData;
}

class SellerRecordDocumentEquality implements Equality<SellerRecord> {
  const SellerRecordDocumentEquality();

  @override
  bool equals(SellerRecord? e1, SellerRecord? e2) {
    return e1?.price == e2?.price &&
        e1?.createdAt == e2?.createdAt &&
        e1?.modifiedAt == e2?.modifiedAt &&
        e1?.quantity == e2?.quantity &&
        e1?.productname == e2?.productname &&
        e1?.category == e2?.category &&
        e1?.mobileno == e2?.mobileno &&
        e1?.images == e2?.images &&
        e1?.area == e2?.area;
  }

  @override
  int hash(SellerRecord? e) => const ListEquality().hash([
        e?.price,
        e?.createdAt,
        e?.modifiedAt,
        e?.quantity,
        e?.productname,
        e?.category,
        e?.mobileno,
        e?.images,
        e?.area
      ]);

  @override
  bool isValidKey(Object? o) => o is SellerRecord;
}
