import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TransaccionesRecord extends FirestoreRecord {
  TransaccionesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "etapa" field.
  int? _etapa;
  int get etapa => _etapa ?? 0;
  bool hasEtapa() => _etapa != null;

  // "order_status" field.
  String? _orderStatus;
  String get orderStatus => _orderStatus ?? '';
  bool hasOrderStatus() => _orderStatus != null;

  // "payment_method" field.
  String? _paymentMethod;
  String get paymentMethod => _paymentMethod ?? '';
  bool hasPaymentMethod() => _paymentMethod != null;

  // "precio_final" field.
  double? _precioFinal;
  double get precioFinal => _precioFinal ?? 0.0;
  bool hasPrecioFinal() => _precioFinal != null;

  // "precio_unidad" field.
  double? _precioUnidad;
  double get precioUnidad => _precioUnidad ?? 0.0;
  bool hasPrecioUnidad() => _precioUnidad != null;

  // "product_id" field.
  String? _productId;
  String get productId => _productId ?? '';
  bool hasProductId() => _productId != null;

  // "quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  bool hasQuantity() => _quantity != null;

  // "shipping_address" field.
  String? _shippingAddress;
  String get shippingAddress => _shippingAddress ?? '';
  bool hasShippingAddress() => _shippingAddress != null;

  // "transaction_date" field.
  DateTime? _transactionDate;
  DateTime? get transactionDate => _transactionDate;
  bool hasTransactionDate() => _transactionDate != null;

  // "user_id" field.
  String? _userId;
  String get userId => _userId ?? '';
  bool hasUserId() => _userId != null;

  // "transaction_id" field.
  String? _transactionId;
  String get transactionId => _transactionId ?? '';
  bool hasTransactionId() => _transactionId != null;

  void _initializeFields() {
    _etapa = castToType<int>(snapshotData['etapa']);
    _orderStatus = snapshotData['order_status'] as String?;
    _paymentMethod = snapshotData['payment_method'] as String?;
    _precioFinal = castToType<double>(snapshotData['precio_final']);
    _precioUnidad = castToType<double>(snapshotData['precio_unidad']);
    _productId = snapshotData['product_id'] as String?;
    _quantity = castToType<int>(snapshotData['quantity']);
    _shippingAddress = snapshotData['shipping_address'] as String?;
    _transactionDate = snapshotData['transaction_date'] as DateTime?;
    _userId = snapshotData['user_id'] as String?;
    _transactionId = snapshotData['transaction_id'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('TRANSACCIONES');

  static Stream<TransaccionesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TransaccionesRecord.fromSnapshot(s));

  static Future<TransaccionesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TransaccionesRecord.fromSnapshot(s));

  static TransaccionesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TransaccionesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TransaccionesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TransaccionesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TransaccionesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TransaccionesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTransaccionesRecordData({
  int? etapa,
  String? orderStatus,
  String? paymentMethod,
  double? precioFinal,
  double? precioUnidad,
  String? productId,
  int? quantity,
  String? shippingAddress,
  DateTime? transactionDate,
  String? userId,
  String? transactionId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'etapa': etapa,
      'order_status': orderStatus,
      'payment_method': paymentMethod,
      'precio_final': precioFinal,
      'precio_unidad': precioUnidad,
      'product_id': productId,
      'quantity': quantity,
      'shipping_address': shippingAddress,
      'transaction_date': transactionDate,
      'user_id': userId,
      'transaction_id': transactionId,
    }.withoutNulls,
  );

  return firestoreData;
}

class TransaccionesRecordDocumentEquality
    implements Equality<TransaccionesRecord> {
  const TransaccionesRecordDocumentEquality();

  @override
  bool equals(TransaccionesRecord? e1, TransaccionesRecord? e2) {
    return e1?.etapa == e2?.etapa &&
        e1?.orderStatus == e2?.orderStatus &&
        e1?.paymentMethod == e2?.paymentMethod &&
        e1?.precioFinal == e2?.precioFinal &&
        e1?.precioUnidad == e2?.precioUnidad &&
        e1?.productId == e2?.productId &&
        e1?.quantity == e2?.quantity &&
        e1?.shippingAddress == e2?.shippingAddress &&
        e1?.transactionDate == e2?.transactionDate &&
        e1?.userId == e2?.userId &&
        e1?.transactionId == e2?.transactionId;
  }

  @override
  int hash(TransaccionesRecord? e) => const ListEquality().hash([
        e?.etapa,
        e?.orderStatus,
        e?.paymentMethod,
        e?.precioFinal,
        e?.precioUnidad,
        e?.productId,
        e?.quantity,
        e?.shippingAddress,
        e?.transactionDate,
        e?.userId,
        e?.transactionId
      ]);

  @override
  bool isValidKey(Object? o) => o is TransaccionesRecord;
}
