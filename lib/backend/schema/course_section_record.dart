import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CourseSectionRecord extends FirestoreRecord {
  CourseSectionRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "section_code" field.
  String? _sectionCode;
  String get sectionCode => _sectionCode ?? '';
  bool hasSectionCode() => _sectionCode != null;

  // "section_school_code" field.
  String? _sectionSchoolCode;
  String get sectionSchoolCode => _sectionSchoolCode ?? '';
  bool hasSectionSchoolCode() => _sectionSchoolCode != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "meeting_days" field.
  DateTime? _meetingDays;
  DateTime? get meetingDays => _meetingDays;
  bool hasMeetingDays() => _meetingDays != null;

  // "start_time" field.
  DateTime? _startTime;
  DateTime? get startTime => _startTime;
  bool hasStartTime() => _startTime != null;

  // "end_time" field.
  DateTime? _endTime;
  DateTime? get endTime => _endTime;
  bool hasEndTime() => _endTime != null;

  // "course_id" field.
  DocumentReference? _courseId;
  DocumentReference? get courseId => _courseId;
  bool hasCourseId() => _courseId != null;

  void _initializeFields() {
    _title = snapshotData['title'] as String?;
    _sectionCode = snapshotData['section_code'] as String?;
    _sectionSchoolCode = snapshotData['section_school_code'] as String?;
    _description = snapshotData['description'] as String?;
    _meetingDays = snapshotData['meeting_days'] as DateTime?;
    _startTime = snapshotData['start_time'] as DateTime?;
    _endTime = snapshotData['end_time'] as DateTime?;
    _courseId = snapshotData['course_id'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('CourseSection');

  static Stream<CourseSectionRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CourseSectionRecord.fromSnapshot(s));

  static Future<CourseSectionRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CourseSectionRecord.fromSnapshot(s));

  static CourseSectionRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CourseSectionRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CourseSectionRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CourseSectionRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CourseSectionRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CourseSectionRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCourseSectionRecordData({
  String? title,
  String? sectionCode,
  String? sectionSchoolCode,
  String? description,
  DateTime? meetingDays,
  DateTime? startTime,
  DateTime? endTime,
  DocumentReference? courseId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'title': title,
      'section_code': sectionCode,
      'section_school_code': sectionSchoolCode,
      'description': description,
      'meeting_days': meetingDays,
      'start_time': startTime,
      'end_time': endTime,
      'course_id': courseId,
    }.withoutNulls,
  );

  return firestoreData;
}

class CourseSectionRecordDocumentEquality
    implements Equality<CourseSectionRecord> {
  const CourseSectionRecordDocumentEquality();

  @override
  bool equals(CourseSectionRecord? e1, CourseSectionRecord? e2) {
    return e1?.title == e2?.title &&
        e1?.sectionCode == e2?.sectionCode &&
        e1?.sectionSchoolCode == e2?.sectionSchoolCode &&
        e1?.description == e2?.description &&
        e1?.meetingDays == e2?.meetingDays &&
        e1?.startTime == e2?.startTime &&
        e1?.endTime == e2?.endTime &&
        e1?.courseId == e2?.courseId;
  }

  @override
  int hash(CourseSectionRecord? e) => const ListEquality().hash([
        e?.title,
        e?.sectionCode,
        e?.sectionSchoolCode,
        e?.description,
        e?.meetingDays,
        e?.startTime,
        e?.endTime,
        e?.courseId
      ]);

  @override
  bool isValidKey(Object? o) => o is CourseSectionRecord;
}
