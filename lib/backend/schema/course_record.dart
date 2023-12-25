import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CourseRecord extends FirestoreRecord {
  CourseRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "building_id" field.
  DocumentReference? _buildingId;
  DocumentReference? get buildingId => _buildingId;
  bool hasBuildingId() => _buildingId != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "course_code" field.
  String? _courseCode;
  String get courseCode => _courseCode ?? '';
  bool hasCourseCode() => _courseCode != null;

  // "department" field.
  String? _department;
  String get department => _department ?? '';
  bool hasDepartment() => _department != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "credits" field.
  double? _credits;
  double get credits => _credits ?? 0.0;
  bool hasCredits() => _credits != null;

  // "grade_level_range_start" field.
  int? _gradeLevelRangeStart;
  int get gradeLevelRangeStart => _gradeLevelRangeStart ?? 0;
  bool hasGradeLevelRangeStart() => _gradeLevelRangeStart != null;

  // "grade_level_range_end" field.
  int? _gradeLevelRangeEnd;
  int get gradeLevelRangeEnd => _gradeLevelRangeEnd ?? 0;
  bool hasGradeLevelRangeEnd() => _gradeLevelRangeEnd != null;

  // "subject_area" field.
  String? _subjectArea;
  String get subjectArea => _subjectArea ?? '';
  bool hasSubjectArea() => _subjectArea != null;

  // "Enrollment" field.
  List<DocumentReference>? _enrollment;
  List<DocumentReference> get enrollment => _enrollment ?? const [];
  bool hasEnrollment() => _enrollment != null;

  // "list_of_assigments" field.
  List<DocumentReference>? _listOfAssigments;
  List<DocumentReference> get listOfAssigments => _listOfAssigments ?? const [];
  bool hasListOfAssigments() => _listOfAssigments != null;

  // "completed" field.
  bool? _completed;
  bool get completed => _completed ?? false;
  bool hasCompleted() => _completed != null;

  // "teacher" field.
  DocumentReference? _teacher;
  DocumentReference? get teacher => _teacher;
  bool hasTeacher() => _teacher != null;

  void _initializeFields() {
    _buildingId = snapshotData['building_id'] as DocumentReference?;
    _title = snapshotData['title'] as String?;
    _courseCode = snapshotData['course_code'] as String?;
    _department = snapshotData['department'] as String?;
    _description = snapshotData['description'] as String?;
    _credits = castToType<double>(snapshotData['credits']);
    _gradeLevelRangeStart =
        castToType<int>(snapshotData['grade_level_range_start']);
    _gradeLevelRangeEnd =
        castToType<int>(snapshotData['grade_level_range_end']);
    _subjectArea = snapshotData['subject_area'] as String?;
    _enrollment = getDataList(snapshotData['Enrollment']);
    _listOfAssigments = getDataList(snapshotData['list_of_assigments']);
    _completed = snapshotData['completed'] as bool?;
    _teacher = snapshotData['teacher'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Course');

  static Stream<CourseRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CourseRecord.fromSnapshot(s));

  static Future<CourseRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CourseRecord.fromSnapshot(s));

  static CourseRecord fromSnapshot(DocumentSnapshot snapshot) => CourseRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CourseRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CourseRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CourseRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CourseRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCourseRecordData({
  DocumentReference? buildingId,
  String? title,
  String? courseCode,
  String? department,
  String? description,
  double? credits,
  int? gradeLevelRangeStart,
  int? gradeLevelRangeEnd,
  String? subjectArea,
  bool? completed,
  DocumentReference? teacher,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'building_id': buildingId,
      'title': title,
      'course_code': courseCode,
      'department': department,
      'description': description,
      'credits': credits,
      'grade_level_range_start': gradeLevelRangeStart,
      'grade_level_range_end': gradeLevelRangeEnd,
      'subject_area': subjectArea,
      'completed': completed,
      'teacher': teacher,
    }.withoutNulls,
  );

  return firestoreData;
}

class CourseRecordDocumentEquality implements Equality<CourseRecord> {
  const CourseRecordDocumentEquality();

  @override
  bool equals(CourseRecord? e1, CourseRecord? e2) {
    const listEquality = ListEquality();
    return e1?.buildingId == e2?.buildingId &&
        e1?.title == e2?.title &&
        e1?.courseCode == e2?.courseCode &&
        e1?.department == e2?.department &&
        e1?.description == e2?.description &&
        e1?.credits == e2?.credits &&
        e1?.gradeLevelRangeStart == e2?.gradeLevelRangeStart &&
        e1?.gradeLevelRangeEnd == e2?.gradeLevelRangeEnd &&
        e1?.subjectArea == e2?.subjectArea &&
        listEquality.equals(e1?.enrollment, e2?.enrollment) &&
        listEquality.equals(e1?.listOfAssigments, e2?.listOfAssigments) &&
        e1?.completed == e2?.completed &&
        e1?.teacher == e2?.teacher;
  }

  @override
  int hash(CourseRecord? e) => const ListEquality().hash([
        e?.buildingId,
        e?.title,
        e?.courseCode,
        e?.department,
        e?.description,
        e?.credits,
        e?.gradeLevelRangeStart,
        e?.gradeLevelRangeEnd,
        e?.subjectArea,
        e?.enrollment,
        e?.listOfAssigments,
        e?.completed,
        e?.teacher
      ]);

  @override
  bool isValidKey(Object? o) => o is CourseRecord;
}
