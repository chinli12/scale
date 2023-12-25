import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BuildingRecord extends FirestoreRecord {
  BuildingRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "address1" field.
  String? _address1;
  String get address1 => _address1 ?? '';
  bool hasAddress1() => _address1 != null;

  // "address2" field.
  String? _address2;
  String get address2 => _address2 ?? '';
  bool hasAddress2() => _address2 != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  bool hasCity() => _city != null;

  // "state" field.
  String? _state;
  String get state => _state ?? '';
  bool hasState() => _state != null;

  // "postal_code" field.
  String? _postalCode;
  String get postalCode => _postalCode ?? '';
  bool hasPostalCode() => _postalCode != null;

  // "country" field.
  String? _country;
  String get country => _country ?? '';
  bool hasCountry() => _country != null;

  // "website" field.
  String? _website;
  String get website => _website ?? '';
  bool hasWebsite() => _website != null;

  // "phone" field.
  String? _phone;
  String get phone => _phone ?? '';
  bool hasPhone() => _phone != null;

  // "school_id" field.
  DocumentReference? _schoolId;
  DocumentReference? get schoolId => _schoolId;
  bool hasSchoolId() => _schoolId != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "picture_url" field.
  String? _pictureUrl;
  String get pictureUrl => _pictureUrl ?? '';
  bool hasPictureUrl() => _pictureUrl != null;

  void _initializeFields() {
    _title = snapshotData['title'] as String?;
    _address1 = snapshotData['address1'] as String?;
    _address2 = snapshotData['address2'] as String?;
    _city = snapshotData['city'] as String?;
    _state = snapshotData['state'] as String?;
    _postalCode = snapshotData['postal_code'] as String?;
    _country = snapshotData['country'] as String?;
    _website = snapshotData['website'] as String?;
    _phone = snapshotData['phone'] as String?;
    _schoolId = snapshotData['school_id'] as DocumentReference?;
    _user = snapshotData['user'] as DocumentReference?;
    _id = snapshotData['id'] as String?;
    _pictureUrl = snapshotData['picture_url'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('building');

  static Stream<BuildingRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BuildingRecord.fromSnapshot(s));

  static Future<BuildingRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BuildingRecord.fromSnapshot(s));

  static BuildingRecord fromSnapshot(DocumentSnapshot snapshot) =>
      BuildingRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BuildingRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BuildingRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BuildingRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BuildingRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBuildingRecordData({
  String? title,
  String? address1,
  String? address2,
  String? city,
  String? state,
  String? postalCode,
  String? country,
  String? website,
  String? phone,
  DocumentReference? schoolId,
  DocumentReference? user,
  String? id,
  String? pictureUrl,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'title': title,
      'address1': address1,
      'address2': address2,
      'city': city,
      'state': state,
      'postal_code': postalCode,
      'country': country,
      'website': website,
      'phone': phone,
      'school_id': schoolId,
      'user': user,
      'id': id,
      'picture_url': pictureUrl,
    }.withoutNulls,
  );

  return firestoreData;
}

class BuildingRecordDocumentEquality implements Equality<BuildingRecord> {
  const BuildingRecordDocumentEquality();

  @override
  bool equals(BuildingRecord? e1, BuildingRecord? e2) {
    return e1?.title == e2?.title &&
        e1?.address1 == e2?.address1 &&
        e1?.address2 == e2?.address2 &&
        e1?.city == e2?.city &&
        e1?.state == e2?.state &&
        e1?.postalCode == e2?.postalCode &&
        e1?.country == e2?.country &&
        e1?.website == e2?.website &&
        e1?.phone == e2?.phone &&
        e1?.schoolId == e2?.schoolId &&
        e1?.user == e2?.user &&
        e1?.id == e2?.id &&
        e1?.pictureUrl == e2?.pictureUrl;
  }

  @override
  int hash(BuildingRecord? e) => const ListEquality().hash([
        e?.title,
        e?.address1,
        e?.address2,
        e?.city,
        e?.state,
        e?.postalCode,
        e?.country,
        e?.website,
        e?.phone,
        e?.schoolId,
        e?.user,
        e?.id,
        e?.pictureUrl
      ]);

  @override
  bool isValidKey(Object? o) => o is BuildingRecord;
}
