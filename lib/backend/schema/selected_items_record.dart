import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SelectedItemsRecord extends FirestoreRecord {
  SelectedItemsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "item" field.
  DocumentReference? _item;
  DocumentReference? get item => _item;
  bool hasItem() => _item != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "subTotal" field.
  double? _subTotal;
  double get subTotal => _subTotal ?? 0.0;
  bool hasSubTotal() => _subTotal != null;

  // "creator" field.
  DocumentReference? _creator;
  DocumentReference? get creator => _creator;
  bool hasCreator() => _creator != null;

  // "quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  bool hasQuantity() => _quantity != null;

  void _initializeFields() {
    _item = snapshotData['item'] as DocumentReference?;
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _image = snapshotData['image'] as String?;
    _price = castToType<double>(snapshotData['price']);
    _subTotal = castToType<double>(snapshotData['subTotal']);
    _creator = snapshotData['creator'] as DocumentReference?;
    _quantity = castToType<int>(snapshotData['quantity']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('selectedItems');

  static Stream<SelectedItemsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SelectedItemsRecord.fromSnapshot(s));

  static Future<SelectedItemsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SelectedItemsRecord.fromSnapshot(s));

  static SelectedItemsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SelectedItemsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SelectedItemsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SelectedItemsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SelectedItemsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SelectedItemsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSelectedItemsRecordData({
  DocumentReference? item,
  String? name,
  String? description,
  String? image,
  double? price,
  double? subTotal,
  DocumentReference? creator,
  int? quantity,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'item': item,
      'name': name,
      'description': description,
      'image': image,
      'price': price,
      'subTotal': subTotal,
      'creator': creator,
      'quantity': quantity,
    }.withoutNulls,
  );

  return firestoreData;
}

class SelectedItemsRecordDocumentEquality
    implements Equality<SelectedItemsRecord> {
  const SelectedItemsRecordDocumentEquality();

  @override
  bool equals(SelectedItemsRecord? e1, SelectedItemsRecord? e2) {
    return e1?.item == e2?.item &&
        e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        e1?.image == e2?.image &&
        e1?.price == e2?.price &&
        e1?.subTotal == e2?.subTotal &&
        e1?.creator == e2?.creator &&
        e1?.quantity == e2?.quantity;
  }

  @override
  int hash(SelectedItemsRecord? e) => const ListEquality().hash([
        e?.item,
        e?.name,
        e?.description,
        e?.image,
        e?.price,
        e?.subTotal,
        e?.creator,
        e?.quantity
      ]);

  @override
  bool isValidKey(Object? o) => o is SelectedItemsRecord;
}
