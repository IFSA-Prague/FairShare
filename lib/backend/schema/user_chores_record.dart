import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserChoresRecord extends FirestoreRecord {
  UserChoresRecord._(
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

  // "due_date" field.
  DateTime? _dueDate;
  DateTime? get dueDate => _dueDate;
  bool hasDueDate() => _dueDate != null;

  // "household" field.
  DocumentReference? _household;
  DocumentReference? get household => _household;
  bool hasHousehold() => _household != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _icon = snapshotData['icon'] as String?;
    _dueDate = snapshotData['due_date'] as DateTime?;
    _household = snapshotData['household'] as DocumentReference?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('user_chores')
          : FirebaseFirestore.instance.collectionGroup('user_chores');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('user_chores').doc(id);

  static Stream<UserChoresRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserChoresRecord.fromSnapshot(s));

  static Future<UserChoresRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserChoresRecord.fromSnapshot(s));

  static UserChoresRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UserChoresRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserChoresRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserChoresRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserChoresRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserChoresRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserChoresRecordData({
  String? name,
  String? icon,
  DateTime? dueDate,
  DocumentReference? household,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'icon': icon,
      'due_date': dueDate,
      'household': household,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserChoresRecordDocumentEquality implements Equality<UserChoresRecord> {
  const UserChoresRecordDocumentEquality();

  @override
  bool equals(UserChoresRecord? e1, UserChoresRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.icon == e2?.icon &&
        e1?.dueDate == e2?.dueDate &&
        e1?.household == e2?.household;
  }

  @override
  int hash(UserChoresRecord? e) =>
      const ListEquality().hash([e?.name, e?.icon, e?.dueDate, e?.household]);

  @override
  bool isValidKey(Object? o) => o is UserChoresRecord;
}
