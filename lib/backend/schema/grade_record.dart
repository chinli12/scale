import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GradeRecord extends FirestoreRecord {
  GradeRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "enrollment_id" field.
  DocumentReference? _enrollmentId;
  DocumentReference? get enrollmentId => _enrollmentId;
  bool hasEnrollmentId() => _enrollmentId != null;

  // "assignment_id" field.
  DocumentReference? _assignmentId;
  DocumentReference? get assignmentId => _assignmentId;
  bool hasAssignmentId() => _assignmentId != null;

  // "grade" field.
  int? _grade;
  int get grade => _grade ?? 0;
  bool hasGrade() => _grade != null;

  // "timestamp" field.
  DateTime? _timestamp;
  DateTime? get timestamp => _timestamp;
  bool hasTimestamp() => _timestamp != null;

  // "is_final" field.
  bool? _isFinal;
  bool get isFinal => _isFinal ?? false;
  bool hasIsFinal() => _isFinal != null;

  void _initializeFields() {
    _enrollmentId = snapshotData['enrollment_id'] as DocumentReference?;
    _assignmentId = snapshotData['assignment_id'] as DocumentReference?;
    _grade = castToType<int>(snapshotData['grade']);
    _timestamp = snapshotData['timestamp'] as DateTime?;
    _isFinal = snapshotData['is_final'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Grade');

  static Stream<GradeRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => GradeRecord.fromSnapshot(s));

  static Future<GradeRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => GradeRecord.fromSnapshot(s));

  static GradeRecord fromSnapshot(DocumentSnapshot snapshot) => GradeRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static GradeRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      GradeRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'GradeRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is GradeRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createGradeRecordData({
  DocumentReference? enrollmentId,
  DocumentReference? assignmentId,
  int? grade,
  DateTime? timestamp,
  bool? isFinal,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'enrollment_id': enrollmentId,
      'assignment_id': assignmentId,
      'grade': grade,
      'timestamp': timestamp,
      'is_final': isFinal,
    }.withoutNulls,
  );

  return firestoreData;
}

class GradeRecordDocumentEquality implements Equality<GradeRecord> {
  const GradeRecordDocumentEquality();

  @override
  bool equals(GradeRecord? e1, GradeRecord? e2) {
    return e1?.enrollmentId == e2?.enrollmentId &&
        e1?.assignmentId == e2?.assignmentId &&
        e1?.grade == e2?.grade &&
        e1?.timestamp == e2?.timestamp &&
        e1?.isFinal == e2?.isFinal;
  }

  @override
  int hash(GradeRecord? e) => const ListEquality().hash(
      [e?.enrollmentId, e?.assignmentId, e?.grade, e?.timestamp, e?.isFinal]);

  @override
  bool isValidKey(Object? o) => o is GradeRecord;
}
