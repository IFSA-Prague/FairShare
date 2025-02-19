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

  void _initializeFields() {
    _hid = snapshotData['hid'] as String?;
    _name = snapshotData['name'] as String?;
    _members = getDataList(snapshotData['members']);
    _createdAt = snapshotData['createdAt'] as DateTime?;
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
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'hid': hid,
      'name': name,
      'createdAt': createdAt,
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
        e1?.createdAt == e2?.createdAt;
  }

  @override
  int hash(HouseholdsRecord? e) =>
      const ListEquality().hash([e?.hid, e?.name, e?.members, e?.createdAt]);

  @override
  bool isValidKey(Object? o) => o is HouseholdsRecord;
}
