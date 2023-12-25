import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "building" field.
  DocumentReference? _building;
  DocumentReference? get building => _building;
  bool hasBuilding() => _building != null;

  // "school" field.
  DocumentReference? _school;
  DocumentReference? get school => _school;
  bool hasSchool() => _school != null;

  // "cours_enrole" field.
  List<DocumentReference>? _coursEnrole;
  List<DocumentReference> get coursEnrole => _coursEnrole ?? const [];
  bool hasCoursEnrole() => _coursEnrole != null;

  // "courseteach" field.
  List<DocumentReference>? _courseteach;
  List<DocumentReference> get courseteach => _courseteach ?? const [];
  bool hasCourseteach() => _courseteach != null;

  // "enrolstudent" field.
  List<DocumentReference>? _enrolstudent;
  List<DocumentReference> get enrolstudent => _enrolstudent ?? const [];
  bool hasEnrolstudent() => _enrolstudent != null;

  // "name_first" field.
  String? _nameFirst;
  String get nameFirst => _nameFirst ?? '';
  bool hasNameFirst() => _nameFirst != null;

  // "name_middle" field.
  String? _nameMiddle;
  String get nameMiddle => _nameMiddle ?? '';
  bool hasNameMiddle() => _nameMiddle != null;

  // "name_last" field.
  String? _nameLast;
  String get nameLast => _nameLast ?? '';
  bool hasNameLast() => _nameLast != null;

  // "username" field.
  String? _username;
  String get username => _username ?? '';
  bool hasUsername() => _username != null;

  // "gender" field.
  String? _gender;
  String get gender => _gender ?? '';
  bool hasGender() => _gender != null;

  // "grad_year" field.
  DateTime? _gradYear;
  DateTime? get gradYear => _gradYear;
  bool hasGradYear() => _gradYear != null;

  // "birthday_date" field.
  DateTime? _birthdayDate;
  DateTime? get birthdayDate => _birthdayDate;
  bool hasBirthdayDate() => _birthdayDate != null;

  // "Role" field.
  String? _role;
  String get role => _role ?? '';
  bool hasRole() => _role != null;

  // "owner" field.
  DocumentReference? _owner;
  DocumentReference? get owner => _owner;
  bool hasOwner() => _owner != null;

  // "amountpaid" field.
  double? _amountpaid;
  double get amountpaid => _amountpaid ?? 0.0;
  bool hasAmountpaid() => _amountpaid != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _building = snapshotData['building'] as DocumentReference?;
    _school = snapshotData['school'] as DocumentReference?;
    _coursEnrole = getDataList(snapshotData['cours_enrole']);
    _courseteach = getDataList(snapshotData['courseteach']);
    _enrolstudent = getDataList(snapshotData['enrolstudent']);
    _nameFirst = snapshotData['name_first'] as String?;
    _nameMiddle = snapshotData['name_middle'] as String?;
    _nameLast = snapshotData['name_last'] as String?;
    _username = snapshotData['username'] as String?;
    _gender = snapshotData['gender'] as String?;
    _gradYear = snapshotData['grad_year'] as DateTime?;
    _birthdayDate = snapshotData['birthday_date'] as DateTime?;
    _role = snapshotData['Role'] as String?;
    _owner = snapshotData['owner'] as DocumentReference?;
    _amountpaid = castToType<double>(snapshotData['amountpaid']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  DocumentReference? building,
  DocumentReference? school,
  String? nameFirst,
  String? nameMiddle,
  String? nameLast,
  String? username,
  String? gender,
  DateTime? gradYear,
  DateTime? birthdayDate,
  String? role,
  DocumentReference? owner,
  double? amountpaid,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'building': building,
      'school': school,
      'name_first': nameFirst,
      'name_middle': nameMiddle,
      'name_last': nameLast,
      'username': username,
      'gender': gender,
      'grad_year': gradYear,
      'birthday_date': birthdayDate,
      'Role': role,
      'owner': owner,
      'amountpaid': amountpaid,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    const listEquality = ListEquality();
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.building == e2?.building &&
        e1?.school == e2?.school &&
        listEquality.equals(e1?.coursEnrole, e2?.coursEnrole) &&
        listEquality.equals(e1?.courseteach, e2?.courseteach) &&
        listEquality.equals(e1?.enrolstudent, e2?.enrolstudent) &&
        e1?.nameFirst == e2?.nameFirst &&
        e1?.nameMiddle == e2?.nameMiddle &&
        e1?.nameLast == e2?.nameLast &&
        e1?.username == e2?.username &&
        e1?.gender == e2?.gender &&
        e1?.gradYear == e2?.gradYear &&
        e1?.birthdayDate == e2?.birthdayDate &&
        e1?.role == e2?.role &&
        e1?.owner == e2?.owner &&
        e1?.amountpaid == e2?.amountpaid;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.building,
        e?.school,
        e?.coursEnrole,
        e?.courseteach,
        e?.enrolstudent,
        e?.nameFirst,
        e?.nameMiddle,
        e?.nameLast,
        e?.username,
        e?.gender,
        e?.gradYear,
        e?.birthdayDate,
        e?.role,
        e?.owner,
        e?.amountpaid
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
