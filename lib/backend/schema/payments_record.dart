import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PaymentsRecord extends FirestoreRecord {
  PaymentsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "amount" field.
  double? _amount;
  double get amount => _amount ?? 0.0;
  bool hasAmount() => _amount != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "paidStatus" field.
  bool? _paidStatus;
  bool get paidStatus => _paidStatus ?? false;
  bool hasPaidStatus() => _paidStatus != null;

  // "hid" field.
  String? _hid;
  String get hid => _hid ?? '';
  bool hasHid() => _hid != null;

  // "payer_uid" field.
  String? _payerUid;
  String get payerUid => _payerUid ?? '';
  bool hasPayerUid() => _payerUid != null;

  // "requester_uid" field.
  String? _requesterUid;
  String get requesterUid => _requesterUid ?? '';
  bool hasRequesterUid() => _requesterUid != null;

  // "payment_date" field.
  DateTime? _paymentDate;
  DateTime? get paymentDate => _paymentDate;
  bool hasPaymentDate() => _paymentDate != null;

  // "requester_name" field.
  String? _requesterName;
  String get requesterName => _requesterName ?? '';
  bool hasRequesterName() => _requesterName != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _amount = castToType<double>(snapshotData['amount']);
    _createdAt = snapshotData['created_at'] as DateTime?;
    _paidStatus = snapshotData['paidStatus'] as bool?;
    _hid = snapshotData['hid'] as String?;
    _payerUid = snapshotData['payer_uid'] as String?;
    _requesterUid = snapshotData['requester_uid'] as String?;
    _paymentDate = snapshotData['payment_date'] as DateTime?;
    _requesterName = snapshotData['requester_name'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('payments');

  static Stream<PaymentsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PaymentsRecord.fromSnapshot(s));

  static Future<PaymentsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PaymentsRecord.fromSnapshot(s));

  static PaymentsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PaymentsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PaymentsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PaymentsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PaymentsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PaymentsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPaymentsRecordData({
  String? name,
  double? amount,
  DateTime? createdAt,
  bool? paidStatus,
  String? hid,
  String? payerUid,
  String? requesterUid,
  DateTime? paymentDate,
  String? requesterName,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'amount': amount,
      'created_at': createdAt,
      'paidStatus': paidStatus,
      'hid': hid,
      'payer_uid': payerUid,
      'requester_uid': requesterUid,
      'payment_date': paymentDate,
      'requester_name': requesterName,
    }.withoutNulls,
  );

  return firestoreData;
}

class PaymentsRecordDocumentEquality implements Equality<PaymentsRecord> {
  const PaymentsRecordDocumentEquality();

  @override
  bool equals(PaymentsRecord? e1, PaymentsRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.amount == e2?.amount &&
        e1?.createdAt == e2?.createdAt &&
        e1?.paidStatus == e2?.paidStatus &&
        e1?.hid == e2?.hid &&
        e1?.payerUid == e2?.payerUid &&
        e1?.requesterUid == e2?.requesterUid &&
        e1?.paymentDate == e2?.paymentDate &&
        e1?.requesterName == e2?.requesterName;
  }

  @override
  int hash(PaymentsRecord? e) => const ListEquality().hash([
        e?.name,
        e?.amount,
        e?.createdAt,
        e?.paidStatus,
        e?.hid,
        e?.payerUid,
        e?.requesterUid,
        e?.paymentDate,
        e?.requesterName
      ]);

  @override
  bool isValidKey(Object? o) => o is PaymentsRecord;
}
