import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GroupRecord extends FirestoreRecord {
  GroupRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "building_id" field.
  DocumentReference? _buildingId;
  DocumentReference? get buildingId => _buildingId;
  bool hasBuildingId() => _buildingId != null;

  // "school_id" field.
  DocumentReference? _schoolId;
  DocumentReference? get schoolId => _schoolId;
  bool hasSchoolId() => _schoolId != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "picture_url" field.
  String? _pictureUrl;
  String get pictureUrl => _pictureUrl ?? '';
  bool hasPictureUrl() => _pictureUrl != null;

  // "website" field.
  String? _website;
  String get website => _website ?? '';
  bool hasWebsite() => _website != null;

  // "access_code" field.
  String? _accessCode;
  String get accessCode => _accessCode ?? '';
  bool hasAccessCode() => _accessCode != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  void _initializeFields() {
    _buildingId = snapshotData['building_id'] as DocumentReference?;
    _schoolId = snapshotData['school_id'] as DocumentReference?;
    _title = snapshotData['title'] as String?;
    _description = snapshotData['description'] as String?;
    _pictureUrl = snapshotData['picture_url'] as String?;
    _website = snapshotData['website'] as String?;
    _accessCode = snapshotData['access_code'] as String?;
    _category = snapshotData['category'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Group');

  static Stream<GroupRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => GroupRecord.fromSnapshot(s));

  static Future<GroupRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => GroupRecord.fromSnapshot(s));

  static GroupRecord fromSnapshot(DocumentSnapshot snapshot) => GroupRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static GroupRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      GroupRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'GroupRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is GroupRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createGroupRecordData({
  DocumentReference? buildingId,
  DocumentReference? schoolId,
  String? title,
  String? description,
  String? pictureUrl,
  String? website,
  String? accessCode,
  String? category,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'building_id': buildingId,
      'school_id': schoolId,
      'title': title,
      'description': description,
      'picture_url': pictureUrl,
      'website': website,
      'access_code': accessCode,
      'category': category,
    }.withoutNulls,
  );

  return firestoreData;
}

class GroupRecordDocumentEquality implements Equality<GroupRecord> {
  const GroupRecordDocumentEquality();

  @override
  bool equals(GroupRecord? e1, GroupRecord? e2) {
    return e1?.buildingId == e2?.buildingId &&
        e1?.schoolId == e2?.schoolId &&
        e1?.title == e2?.title &&
        e1?.description == e2?.description &&
        e1?.pictureUrl == e2?.pictureUrl &&
        e1?.website == e2?.website &&
        e1?.accessCode == e2?.accessCode &&
        e1?.category == e2?.category;
  }

  @override
  int hash(GroupRecord? e) => const ListEquality().hash([
        e?.buildingId,
        e?.schoolId,
        e?.title,
        e?.description,
        e?.pictureUrl,
        e?.website,
        e?.accessCode,
        e?.category
      ]);

  @override
  bool isValidKey(Object? o) => o is GroupRecord;
}
