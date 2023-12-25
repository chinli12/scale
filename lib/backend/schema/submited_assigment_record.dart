import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SubmitedAssigmentRecord extends FirestoreRecord {
  SubmitedAssigmentRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "assigment_id" field.
  DocumentReference? _assigmentId;
  DocumentReference? get assigmentId => _assigmentId;
  bool hasAssigmentId() => _assigmentId != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "submition" field.
  String? _submition;
  String get submition => _submition ?? '';
  bool hasSubmition() => _submition != null;

  // "files" field.
  String? _files;
  String get files => _files ?? '';
  bool hasFiles() => _files != null;

  // "course_id" field.
  DocumentReference? _courseId;
  DocumentReference? get courseId => _courseId;
  bool hasCourseId() => _courseId != null;

  // "graded" field.
  bool? _graded;
  bool get graded => _graded ?? false;
  bool hasGraded() => _graded != null;

  // "submited_at" field.
  DateTime? _submitedAt;
  DateTime? get submitedAt => _submitedAt;
  bool hasSubmitedAt() => _submitedAt != null;

  void _initializeFields() {
    _assigmentId = snapshotData['assigment_id'] as DocumentReference?;
    _user = snapshotData['user'] as DocumentReference?;
    _submition = snapshotData['submition'] as String?;
    _files = snapshotData['files'] as String?;
    _courseId = snapshotData['course_id'] as DocumentReference?;
    _graded = snapshotData['graded'] as bool?;
    _submitedAt = snapshotData['submited_at'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('submited_assigment');

  static Stream<SubmitedAssigmentRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SubmitedAssigmentRecord.fromSnapshot(s));

  static Future<SubmitedAssigmentRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => SubmitedAssigmentRecord.fromSnapshot(s));

  static SubmitedAssigmentRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SubmitedAssigmentRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SubmitedAssigmentRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SubmitedAssigmentRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SubmitedAssigmentRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SubmitedAssigmentRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSubmitedAssigmentRecordData({
  DocumentReference? assigmentId,
  DocumentReference? user,
  String? submition,
  String? files,
  DocumentReference? courseId,
  bool? graded,
  DateTime? submitedAt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'assigment_id': assigmentId,
      'user': user,
      'submition': submition,
      'files': files,
      'course_id': courseId,
      'graded': graded,
      'submited_at': submitedAt,
    }.withoutNulls,
  );

  return firestoreData;
}

class SubmitedAssigmentRecordDocumentEquality
    implements Equality<SubmitedAssigmentRecord> {
  const SubmitedAssigmentRecordDocumentEquality();

  @override
  bool equals(SubmitedAssigmentRecord? e1, SubmitedAssigmentRecord? e2) {
    return e1?.assigmentId == e2?.assigmentId &&
        e1?.user == e2?.user &&
        e1?.submition == e2?.submition &&
        e1?.files == e2?.files &&
        e1?.courseId == e2?.courseId &&
        e1?.graded == e2?.graded &&
        e1?.submitedAt == e2?.submitedAt;
  }

  @override
  int hash(SubmitedAssigmentRecord? e) => const ListEquality().hash([
        e?.assigmentId,
        e?.user,
        e?.submition,
        e?.files,
        e?.courseId,
        e?.graded,
        e?.submitedAt
      ]);

  @override
  bool isValidKey(Object? o) => o is SubmitedAssigmentRecord;
}
