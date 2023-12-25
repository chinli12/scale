import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AssignmentRecord extends FirestoreRecord {
  AssignmentRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "due" field.
  DateTime? _due;
  DateTime? get due => _due;
  bool hasDue() => _due != null;

  // "grading_scale" field.
  int? _gradingScale;
  int get gradingScale => _gradingScale ?? 0;
  bool hasGradingScale() => _gradingScale != null;

  // "grading_period" field.
  DateTime? _gradingPeriod;
  DateTime? get gradingPeriod => _gradingPeriod;
  bool hasGradingPeriod() => _gradingPeriod != null;

  // "max_points" field.
  int? _maxPoints;
  int get maxPoints => _maxPoints ?? 0;
  bool hasMaxPoints() => _maxPoints != null;

  // "is_final" field.
  String? _isFinal;
  String get isFinal => _isFinal ?? '';
  bool hasIsFinal() => _isFinal != null;

  // "grade_stats" field.
  DateTime? _gradeStats;
  DateTime? get gradeStats => _gradeStats;
  bool hasGradeStats() => _gradeStats != null;

  // "course_id" field.
  DocumentReference? _courseId;
  DocumentReference? get courseId => _courseId;
  bool hasCourseId() => _courseId != null;

  // "submission" field.
  List<DocumentReference>? _submission;
  List<DocumentReference> get submission => _submission ?? const [];
  bool hasSubmission() => _submission != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  void _initializeFields() {
    _title = snapshotData['title'] as String?;
    _description = snapshotData['description'] as String?;
    _due = snapshotData['due'] as DateTime?;
    _gradingScale = castToType<int>(snapshotData['grading_scale']);
    _gradingPeriod = snapshotData['grading_period'] as DateTime?;
    _maxPoints = castToType<int>(snapshotData['max_points']);
    _isFinal = snapshotData['is_final'] as String?;
    _gradeStats = snapshotData['grade_stats'] as DateTime?;
    _courseId = snapshotData['course_id'] as DocumentReference?;
    _submission = getDataList(snapshotData['submission']);
    _user = snapshotData['user'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Assignment');

  static Stream<AssignmentRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AssignmentRecord.fromSnapshot(s));

  static Future<AssignmentRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AssignmentRecord.fromSnapshot(s));

  static AssignmentRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AssignmentRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AssignmentRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AssignmentRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AssignmentRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AssignmentRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAssignmentRecordData({
  String? title,
  String? description,
  DateTime? due,
  int? gradingScale,
  DateTime? gradingPeriod,
  int? maxPoints,
  String? isFinal,
  DateTime? gradeStats,
  DocumentReference? courseId,
  DocumentReference? user,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'title': title,
      'description': description,
      'due': due,
      'grading_scale': gradingScale,
      'grading_period': gradingPeriod,
      'max_points': maxPoints,
      'is_final': isFinal,
      'grade_stats': gradeStats,
      'course_id': courseId,
      'user': user,
    }.withoutNulls,
  );

  return firestoreData;
}

class AssignmentRecordDocumentEquality implements Equality<AssignmentRecord> {
  const AssignmentRecordDocumentEquality();

  @override
  bool equals(AssignmentRecord? e1, AssignmentRecord? e2) {
    const listEquality = ListEquality();
    return e1?.title == e2?.title &&
        e1?.description == e2?.description &&
        e1?.due == e2?.due &&
        e1?.gradingScale == e2?.gradingScale &&
        e1?.gradingPeriod == e2?.gradingPeriod &&
        e1?.maxPoints == e2?.maxPoints &&
        e1?.isFinal == e2?.isFinal &&
        e1?.gradeStats == e2?.gradeStats &&
        e1?.courseId == e2?.courseId &&
        listEquality.equals(e1?.submission, e2?.submission) &&
        e1?.user == e2?.user;
  }

  @override
  int hash(AssignmentRecord? e) => const ListEquality().hash([
        e?.title,
        e?.description,
        e?.due,
        e?.gradingScale,
        e?.gradingPeriod,
        e?.maxPoints,
        e?.isFinal,
        e?.gradeStats,
        e?.courseId,
        e?.submission,
        e?.user
      ]);

  @override
  bool isValidKey(Object? o) => o is AssignmentRecord;
}
