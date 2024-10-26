import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProfilesettingsRecord extends FirestoreRecord {
  ProfilesettingsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "fullname" field.
  String? _fullname;
  String get fullname => _fullname ?? '';
  bool hasFullname() => _fullname != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  // "contactno" field.
  int? _contactno;
  int get contactno => _contactno ?? 0;
  bool hasContactno() => _contactno != null;

  void _initializeFields() {
    _fullname = snapshotData['fullname'] as String?;
    _email = snapshotData['email'] as String?;
    _category = snapshotData['category'] as String?;
    _contactno = castToType<int>(snapshotData['contactno']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('profilesettings');

  static Stream<ProfilesettingsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProfilesettingsRecord.fromSnapshot(s));

  static Future<ProfilesettingsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProfilesettingsRecord.fromSnapshot(s));

  static ProfilesettingsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProfilesettingsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProfilesettingsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProfilesettingsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProfilesettingsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProfilesettingsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProfilesettingsRecordData({
  String? fullname,
  String? email,
  String? category,
  int? contactno,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'fullname': fullname,
      'email': email,
      'category': category,
      'contactno': contactno,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProfilesettingsRecordDocumentEquality
    implements Equality<ProfilesettingsRecord> {
  const ProfilesettingsRecordDocumentEquality();

  @override
  bool equals(ProfilesettingsRecord? e1, ProfilesettingsRecord? e2) {
    return e1?.fullname == e2?.fullname &&
        e1?.email == e2?.email &&
        e1?.category == e2?.category &&
        e1?.contactno == e2?.contactno;
  }

  @override
  int hash(ProfilesettingsRecord? e) => const ListEquality()
      .hash([e?.fullname, e?.email, e?.category, e?.contactno]);

  @override
  bool isValidKey(Object? o) => o is ProfilesettingsRecord;
}
