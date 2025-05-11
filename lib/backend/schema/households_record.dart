import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class HouseholdsRecord extends FirestoreRecord {
  HouseholdsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "hid" field.
  String? _hid;
  String get hid => _hid ?? '';
  bool hasHid() => _hid != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "members" field.
  List<String>? _members;
  List<String> get members => _members ?? const [];
  bool hasMembers() => _members != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "code_expiration" field.
  DateTime? _codeExpiration;
  DateTime? get codeExpiration => _codeExpiration;
  bool hasCodeExpiration() => _codeExpiration != null;

  // "join_code" field.
  String? _joinCode;
  String get joinCode => _joinCode ?? '';
  bool hasJoinCode() => _joinCode != null;

  // "owner" field.
  String? _owner;
  String get owner => _owner ?? '';
  bool hasOwner() => _owner != null;

  void _initializeFields() {
    _hid = snapshotData['hid'] as String?;
    _name = snapshotData['name'] as String?;
    _members = getDataList(snapshotData['members']);
    _createdAt = snapshotData['createdAt'] as DateTime?;
    _image = snapshotData['image'] as String?;
    _codeExpiration = snapshotData['code_expiration'] as DateTime?;
    _joinCode = snapshotData['join_code'] as String?;
    _owner = snapshotData['owner'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('households');

  static Stream<HouseholdsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => HouseholdsRecord.fromSnapshot(s));

  static Future<HouseholdsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => HouseholdsRecord.fromSnapshot(s));

  static HouseholdsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      HouseholdsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static HouseholdsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      HouseholdsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'HouseholdsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is HouseholdsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createHouseholdsRecordData({
  String? hid,
  String? name,
  DateTime? createdAt,
  String? image,
  DateTime? codeExpiration,
  String? joinCode,
  String? owner,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'hid': hid,
      'name': name,
      'createdAt': createdAt,
      'image': image,
      'code_expiration': codeExpiration,
      'join_code': joinCode,
      'owner': owner,
    }.withoutNulls,
  );

  return firestoreData;
}

class HouseholdsRecordDocumentEquality implements Equality<HouseholdsRecord> {
  const HouseholdsRecordDocumentEquality();

  @override
  bool equals(HouseholdsRecord? e1, HouseholdsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.hid == e2?.hid &&
        e1?.name == e2?.name &&
        listEquality.equals(e1?.members, e2?.members) &&
        e1?.createdAt == e2?.createdAt &&
        e1?.image == e2?.image &&
        e1?.codeExpiration == e2?.codeExpiration &&
        e1?.joinCode == e2?.joinCode &&
        e1?.owner == e2?.owner;
  }

  @override
  int hash(HouseholdsRecord? e) => const ListEquality().hash([
        e?.hid,
        e?.name,
        e?.members,
        e?.createdAt,
        e?.image,
        e?.codeExpiration,
        e?.joinCode,
        e?.owner
      ]);

  @override
  bool isValidKey(Object? o) => o is HouseholdsRecord;
}
