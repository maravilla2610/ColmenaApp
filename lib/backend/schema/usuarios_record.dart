import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsuariosRecord extends FirestoreRecord {
  UsuariosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "bdate" field.
  String? _bdate;
  String get bdate => _bdate ?? '';
  bool hasBdate() => _bdate != null;

  // "last_name" field.
  String? _lastName;
  String get lastName => _lastName ?? '';
  bool hasLastName() => _lastName != null;

  // "mail" field.
  String? _mail;
  String get mail => _mail ?? '';
  bool hasMail() => _mail != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "password" field.
  String? _password;
  String get password => _password ?? '';
  bool hasPassword() => _password != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  bool hasCity() => _city != null;

  // "country" field.
  String? _country;
  String get country => _country ?? '';
  bool hasCountry() => _country != null;

  // "formatted" field.
  String? _formatted;
  String get formatted => _formatted ?? '';
  bool hasFormatted() => _formatted != null;

  // "latitude" field.
  double? _latitude;
  double get latitude => _latitude ?? 0.0;
  bool hasLatitude() => _latitude != null;

  // "longitude" field.
  double? _longitude;
  double get longitude => _longitude ?? 0.0;
  bool hasLongitude() => _longitude != null;

  // "postalCode" field.
  String? _postalCode;
  String get postalCode => _postalCode ?? '';
  bool hasPostalCode() => _postalCode != null;

  // "apt" field.
  String? _apt;
  String get apt => _apt ?? '';
  bool hasApt() => _apt != null;

  // "formattedAdressLine" field.
  String? _formattedAdressLine;
  String get formattedAdressLine => _formattedAdressLine ?? '';
  bool hasFormattedAdressLine() => _formattedAdressLine != null;

  // "number" field.
  String? _number;
  String get number => _number ?? '';
  bool hasNumber() => _number != null;

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

  // "firstLogin" field.
  bool? _firstLogin;
  bool get firstLogin => _firstLogin ?? false;
  bool hasFirstLogin() => _firstLogin != null;

  void _initializeFields() {
    _bdate = snapshotData['bdate'] as String?;
    _lastName = snapshotData['last_name'] as String?;
    _mail = snapshotData['mail'] as String?;
    _name = snapshotData['name'] as String?;
    _password = snapshotData['password'] as String?;
    _city = snapshotData['city'] as String?;
    _country = snapshotData['country'] as String?;
    _formatted = snapshotData['formatted'] as String?;
    _latitude = castToType<double>(snapshotData['latitude']);
    _longitude = castToType<double>(snapshotData['longitude']);
    _postalCode = snapshotData['postalCode'] as String?;
    _apt = snapshotData['apt'] as String?;
    _formattedAdressLine = snapshotData['formattedAdressLine'] as String?;
    _number = snapshotData['number'] as String?;
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _firstLogin = snapshotData['firstLogin'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('usuarios');

  static Stream<UsuariosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsuariosRecord.fromSnapshot(s));

  static Future<UsuariosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsuariosRecord.fromSnapshot(s));

  static UsuariosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UsuariosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsuariosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsuariosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsuariosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsuariosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsuariosRecordData({
  String? bdate,
  String? lastName,
  String? mail,
  String? name,
  String? password,
  String? city,
  String? country,
  String? formatted,
  double? latitude,
  double? longitude,
  String? postalCode,
  String? apt,
  String? formattedAdressLine,
  String? number,
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  bool? firstLogin,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'bdate': bdate,
      'last_name': lastName,
      'mail': mail,
      'name': name,
      'password': password,
      'city': city,
      'country': country,
      'formatted': formatted,
      'latitude': latitude,
      'longitude': longitude,
      'postalCode': postalCode,
      'apt': apt,
      'formattedAdressLine': formattedAdressLine,
      'number': number,
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'firstLogin': firstLogin,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsuariosRecordDocumentEquality implements Equality<UsuariosRecord> {
  const UsuariosRecordDocumentEquality();

  @override
  bool equals(UsuariosRecord? e1, UsuariosRecord? e2) {
    return e1?.bdate == e2?.bdate &&
        e1?.lastName == e2?.lastName &&
        e1?.mail == e2?.mail &&
        e1?.name == e2?.name &&
        e1?.password == e2?.password &&
        e1?.city == e2?.city &&
        e1?.country == e2?.country &&
        e1?.formatted == e2?.formatted &&
        e1?.latitude == e2?.latitude &&
        e1?.longitude == e2?.longitude &&
        e1?.postalCode == e2?.postalCode &&
        e1?.apt == e2?.apt &&
        e1?.formattedAdressLine == e2?.formattedAdressLine &&
        e1?.number == e2?.number &&
        e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.firstLogin == e2?.firstLogin;
  }

  @override
  int hash(UsuariosRecord? e) => const ListEquality().hash([
        e?.bdate,
        e?.lastName,
        e?.mail,
        e?.name,
        e?.password,
        e?.city,
        e?.country,
        e?.formatted,
        e?.latitude,
        e?.longitude,
        e?.postalCode,
        e?.apt,
        e?.formattedAdressLine,
        e?.number,
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.firstLogin
      ]);

  @override
  bool isValidKey(Object? o) => o is UsuariosRecord;
}
