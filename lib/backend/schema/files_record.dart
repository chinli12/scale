import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FilesRecord extends FirestoreRecord {
  FilesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "cours_section" field.
  DocumentReference? _coursSection;
  DocumentReference? get coursSection => _coursSection;
  bool hasCoursSection() => _coursSection != null;

  // "filname" field.
  String? _filname;
  String get filname => _filname ?? '';
  bool hasFilname() => _filname != null;

  // "file" field.
  String? _file;
  String get file => _file ?? '';
  bool hasFile() => _file != null;

  void _initializeFields() {
    _coursSection = snapshotData['cours_section'] as DocumentReference?;
    _filname = snapshotData['filname'] as String?;
    _file = snapshotData['file'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('files');

  static Stream<FilesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FilesRecord.fromSnapshot(s));

  static Future<FilesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FilesRecord.fromSnapshot(s));

  static FilesRecord fromSnapshot(DocumentSnapshot snapshot) => FilesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FilesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FilesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FilesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FilesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFilesRecordData({
  DocumentReference? coursSection,
  String? filname,
  String? file,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'cours_section': coursSection,
      'filname': filname,
      'file': file,
    }.withoutNulls,
  );

  return firestoreData;
}

class FilesRecordDocumentEquality implements Equality<FilesRecord> {
  const FilesRecordDocumentEquality();

  @override
  bool equals(FilesRecord? e1, FilesRecord? e2) {
    return e1?.coursSection == e2?.coursSection &&
        e1?.filname == e2?.filname &&
        e1?.file == e2?.file;
  }

  @override
  int hash(FilesRecord? e) =>
      const ListEquality().hash([e?.coursSection, e?.filname, e?.file]);

  @override
  bool isValidKey(Object? o) => o is FilesRecord;
}
