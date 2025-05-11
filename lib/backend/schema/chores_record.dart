import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChoresRecord extends FirestoreRecord {
  ChoresRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "icon" field.
  String? _icon;
  String get icon => _icon ?? '';
  bool hasIcon() => _icon != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _icon = snapshotData['icon'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('chores');

  static Stream<ChoresRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ChoresRecord.fromSnapshot(s));

  static Future<ChoresRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ChoresRecord.fromSnapshot(s));

  static ChoresRecord fromSnapshot(DocumentSnapshot snapshot) => ChoresRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ChoresRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ChoresRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ChoresRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ChoresRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createChoresRecordData({
  String? name,
  String? icon,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'icon': icon,
    }.withoutNulls,
  );

  return firestoreData;
}

class ChoresRecordDocumentEquality implements Equality<ChoresRecord> {
  const ChoresRecordDocumentEquality();

  @override
  bool equals(ChoresRecord? e1, ChoresRecord? e2) {
    return e1?.name == e2?.name && e1?.icon == e2?.icon;
  }

  @override
  int hash(ChoresRecord? e) => const ListEquality().hash([e?.name, e?.icon]);

  @override
  bool isValidKey(Object? o) => o is ChoresRecord;
}
