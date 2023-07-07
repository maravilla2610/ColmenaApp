import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductosRecord extends FirestoreRecord {
  ProductosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "costo_1" field.
  double? _costo1;
  double get costo1 => _costo1 ?? 0.0;
  bool hasCosto1() => _costo1 != null;

  // "product_description" field.
  String? _productDescription;
  String get productDescription => _productDescription ?? '';
  bool hasProductDescription() => _productDescription != null;

  // "product_manufacturer" field.
  String? _productManufacturer;
  String get productManufacturer => _productManufacturer ?? '';
  bool hasProductManufacturer() => _productManufacturer != null;

  // "product_name" field.
  String? _productName;
  String get productName => _productName ?? '';
  bool hasProductName() => _productName != null;

  // "product_id" field.
  String? _productId;
  String get productId => _productId ?? '';
  bool hasProductId() => _productId != null;

  // "image_URL" field.
  String? _imageURL;
  String get imageURL => _imageURL ?? '';
  bool hasImageURL() => _imageURL != null;

  // "quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  bool hasQuantity() => _quantity != null;

  // "subtotal" field.
  double? _subtotal;
  double get subtotal => _subtotal ?? 0.0;
  bool hasSubtotal() => _subtotal != null;

  // "product_category" field.
  String? _productCategory;
  String get productCategory => _productCategory ?? '';
  bool hasProductCategory() => _productCategory != null;

  // "supply" field.
  int? _supply;
  int get supply => _supply ?? 0;
  bool hasSupply() => _supply != null;

  // "demand" field.
  int? _demand;
  int get demand => _demand ?? 0;
  bool hasDemand() => _demand != null;

  void _initializeFields() {
    _costo1 = castToType<double>(snapshotData['costo_1']);
    _productDescription = snapshotData['product_description'] as String?;
    _productManufacturer = snapshotData['product_manufacturer'] as String?;
    _productName = snapshotData['product_name'] as String?;
    _productId = snapshotData['product_id'] as String?;
    _imageURL = snapshotData['image_URL'] as String?;
    _quantity = castToType<int>(snapshotData['quantity']);
    _subtotal = castToType<double>(snapshotData['subtotal']);
    _productCategory = snapshotData['product_category'] as String?;
    _supply = castToType<int>(snapshotData['supply']);
    _demand = castToType<int>(snapshotData['demand']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('PRODUCTOS');

  static Stream<ProductosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProductosRecord.fromSnapshot(s));

  static Future<ProductosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProductosRecord.fromSnapshot(s));

  static ProductosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProductosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProductosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProductosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProductosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProductosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProductosRecordData({
  double? costo1,
  String? productDescription,
  String? productManufacturer,
  String? productName,
  String? productId,
  String? imageURL,
  int? quantity,
  double? subtotal,
  String? productCategory,
  int? supply,
  int? demand,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'costo_1': costo1,
      'product_description': productDescription,
      'product_manufacturer': productManufacturer,
      'product_name': productName,
      'product_id': productId,
      'image_URL': imageURL,
      'quantity': quantity,
      'subtotal': subtotal,
      'product_category': productCategory,
      'supply': supply,
      'demand': demand,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProductosRecordDocumentEquality implements Equality<ProductosRecord> {
  const ProductosRecordDocumentEquality();

  @override
  bool equals(ProductosRecord? e1, ProductosRecord? e2) {
    return e1?.costo1 == e2?.costo1 &&
        e1?.productDescription == e2?.productDescription &&
        e1?.productManufacturer == e2?.productManufacturer &&
        e1?.productName == e2?.productName &&
        e1?.productId == e2?.productId &&
        e1?.imageURL == e2?.imageURL &&
        e1?.quantity == e2?.quantity &&
        e1?.subtotal == e2?.subtotal &&
        e1?.productCategory == e2?.productCategory &&
        e1?.supply == e2?.supply &&
        e1?.demand == e2?.demand;
  }

  @override
  int hash(ProductosRecord? e) => const ListEquality().hash([
        e?.costo1,
        e?.productDescription,
        e?.productManufacturer,
        e?.productName,
        e?.productId,
        e?.imageURL,
        e?.quantity,
        e?.subtotal,
        e?.productCategory,
        e?.supply,
        e?.demand
      ]);

  @override
  bool isValidKey(Object? o) => o is ProductosRecord;
}
