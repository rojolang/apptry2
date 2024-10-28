import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "firstName" field.
  String? _firstName;
  String get firstName => _firstName ?? '';
  bool hasFirstName() => _firstName != null;

  // "lastName" field.
  String? _lastName;
  String get lastName => _lastName ?? '';
  bool hasLastName() => _lastName != null;

  // "dateOfBirth" field.
  DateTime? _dateOfBirth;
  DateTime? get dateOfBirth => _dateOfBirth;
  bool hasDateOfBirth() => _dateOfBirth != null;

  // "displayName" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photoURL" field.
  String? _photoURL;
  String get photoURL => _photoURL ?? '';
  bool hasPhotoURL() => _photoURL != null;

  // "phoneNumber" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "age" field.
  int? _age;
  int get age => _age ?? 0;
  bool hasAge() => _age != null;

  // "gender" field.
  String? _gender;
  String get gender => _gender ?? '';
  bool hasGender() => _gender != null;

  // "address_street" field.
  String? _addressStreet;
  String get addressStreet => _addressStreet ?? '';
  bool hasAddressStreet() => _addressStreet != null;

  // "address_city" field.
  String? _addressCity;
  String get addressCity => _addressCity ?? '';
  bool hasAddressCity() => _addressCity != null;

  // "address_state" field.
  String? _addressState;
  String get addressState => _addressState ?? '';
  bool hasAddressState() => _addressState != null;

  // "address_postalCode" field.
  String? _addressPostalCode;
  String get addressPostalCode => _addressPostalCode ?? '';
  bool hasAddressPostalCode() => _addressPostalCode != null;

  // "address_country" field.
  String? _addressCountry;
  String get addressCountry => _addressCountry ?? '';
  bool hasAddressCountry() => _addressCountry != null;

  // "language" field.
  String? _language;
  String get language => _language ?? '';
  bool hasLanguage() => _language != null;

  // "timezone" field.
  String? _timezone;
  String get timezone => _timezone ?? '';
  bool hasTimezone() => _timezone != null;

  // "notifcationsEnabled" field.
  bool? _notifcationsEnabled;
  bool get notifcationsEnabled => _notifcationsEnabled ?? false;
  bool hasNotifcationsEnabled() => _notifcationsEnabled != null;

  // "createAt" field.
  DateTime? _createAt;
  DateTime? get createAt => _createAt;
  bool hasCreateAt() => _createAt != null;

  // "lastSignIn" field.
  DateTime? _lastSignIn;
  DateTime? get lastSignIn => _lastSignIn;
  bool hasLastSignIn() => _lastSignIn != null;

  // "signInCount" field.
  int? _signInCount;
  int get signInCount => _signInCount ?? 0;
  bool hasSignInCount() => _signInCount != null;

  // "role" field.
  String? _role;
  String get role => _role ?? '';
  bool hasRole() => _role != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _uid = snapshotData['uid'] as String?;
    _firstName = snapshotData['firstName'] as String?;
    _lastName = snapshotData['lastName'] as String?;
    _dateOfBirth = snapshotData['dateOfBirth'] as DateTime?;
    _displayName = snapshotData['displayName'] as String?;
    _photoURL = snapshotData['photoURL'] as String?;
    _phoneNumber = snapshotData['phoneNumber'] as String?;
    _age = castToType<int>(snapshotData['age']);
    _gender = snapshotData['gender'] as String?;
    _addressStreet = snapshotData['address_street'] as String?;
    _addressCity = snapshotData['address_city'] as String?;
    _addressState = snapshotData['address_state'] as String?;
    _addressPostalCode = snapshotData['address_postalCode'] as String?;
    _addressCountry = snapshotData['address_country'] as String?;
    _language = snapshotData['language'] as String?;
    _timezone = snapshotData['timezone'] as String?;
    _notifcationsEnabled = snapshotData['notifcationsEnabled'] as bool?;
    _createAt = snapshotData['createAt'] as DateTime?;
    _lastSignIn = snapshotData['lastSignIn'] as DateTime?;
    _signInCount = castToType<int>(snapshotData['signInCount']);
    _role = snapshotData['role'] as String?;
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
  String? uid,
  String? firstName,
  String? lastName,
  DateTime? dateOfBirth,
  String? displayName,
  String? photoURL,
  String? phoneNumber,
  int? age,
  String? gender,
  String? addressStreet,
  String? addressCity,
  String? addressState,
  String? addressPostalCode,
  String? addressCountry,
  String? language,
  String? timezone,
  bool? notifcationsEnabled,
  DateTime? createAt,
  DateTime? lastSignIn,
  int? signInCount,
  String? role,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'uid': uid,
      'firstName': firstName,
      'lastName': lastName,
      'dateOfBirth': dateOfBirth,
      'displayName': displayName,
      'photoURL': photoURL,
      'phoneNumber': phoneNumber,
      'age': age,
      'gender': gender,
      'address_street': addressStreet,
      'address_city': addressCity,
      'address_state': addressState,
      'address_postalCode': addressPostalCode,
      'address_country': addressCountry,
      'language': language,
      'timezone': timezone,
      'notifcationsEnabled': notifcationsEnabled,
      'createAt': createAt,
      'lastSignIn': lastSignIn,
      'signInCount': signInCount,
      'role': role,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.uid == e2?.uid &&
        e1?.firstName == e2?.firstName &&
        e1?.lastName == e2?.lastName &&
        e1?.dateOfBirth == e2?.dateOfBirth &&
        e1?.displayName == e2?.displayName &&
        e1?.photoURL == e2?.photoURL &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.age == e2?.age &&
        e1?.gender == e2?.gender &&
        e1?.addressStreet == e2?.addressStreet &&
        e1?.addressCity == e2?.addressCity &&
        e1?.addressState == e2?.addressState &&
        e1?.addressPostalCode == e2?.addressPostalCode &&
        e1?.addressCountry == e2?.addressCountry &&
        e1?.language == e2?.language &&
        e1?.timezone == e2?.timezone &&
        e1?.notifcationsEnabled == e2?.notifcationsEnabled &&
        e1?.createAt == e2?.createAt &&
        e1?.lastSignIn == e2?.lastSignIn &&
        e1?.signInCount == e2?.signInCount &&
        e1?.role == e2?.role;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.uid,
        e?.firstName,
        e?.lastName,
        e?.dateOfBirth,
        e?.displayName,
        e?.photoURL,
        e?.phoneNumber,
        e?.age,
        e?.gender,
        e?.addressStreet,
        e?.addressCity,
        e?.addressState,
        e?.addressPostalCode,
        e?.addressCountry,
        e?.language,
        e?.timezone,
        e?.notifcationsEnabled,
        e?.createAt,
        e?.lastSignIn,
        e?.signInCount,
        e?.role
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
