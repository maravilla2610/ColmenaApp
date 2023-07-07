// ignore_for_file: unnecessary_getters_setters
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SubTotalMapStruct extends FFFirebaseStruct {
  SubTotalMapStruct({
    List<double>? subtotal,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _subtotal = subtotal,
        super(firestoreUtilData);

  // "subtotal" field.
  List<double>? _subtotal;
  List<double> get subtotal => _subtotal ?? const [];
  set subtotal(List<double>? val) => _subtotal = val;
  void updateSubtotal(Function(List<double>) updateFn) =>
      updateFn(_subtotal ??= []);
  bool hasSubtotal() => _subtotal != null;

  static SubTotalMapStruct fromMap(Map<String, dynamic> data) =>
      SubTotalMapStruct(
        subtotal: getDataList(data['subtotal']),
      );

  static SubTotalMapStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? SubTotalMapStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'subtotal': _subtotal,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'subtotal': serializeParam(
          _subtotal,
          ParamType.double,
          true,
        ),
      }.withoutNulls;

  static SubTotalMapStruct fromSerializableMap(Map<String, dynamic> data) =>
      SubTotalMapStruct(
        subtotal: deserializeParam<double>(
          data['subtotal'],
          ParamType.double,
          true,
        ),
      );

  @override
  String toString() => 'SubTotalMapStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is SubTotalMapStruct &&
        listEquality.equals(subtotal, other.subtotal);
  }

  @override
  int get hashCode => const ListEquality().hash([subtotal]);
}

SubTotalMapStruct createSubTotalMapStruct({
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    SubTotalMapStruct(
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

SubTotalMapStruct? updateSubTotalMapStruct(
  SubTotalMapStruct? subTotalMap, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    subTotalMap
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addSubTotalMapStructData(
  Map<String, dynamic> firestoreData,
  SubTotalMapStruct? subTotalMap,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (subTotalMap == null) {
    return;
  }
  if (subTotalMap.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && subTotalMap.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final subTotalMapData =
      getSubTotalMapFirestoreData(subTotalMap, forFieldValue);
  final nestedData =
      subTotalMapData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = subTotalMap.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getSubTotalMapFirestoreData(
  SubTotalMapStruct? subTotalMap, [
  bool forFieldValue = false,
]) {
  if (subTotalMap == null) {
    return {};
  }
  final firestoreData = mapToFirestore(subTotalMap.toMap());

  // Add any Firestore field values
  subTotalMap.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getSubTotalMapListFirestoreData(
  List<SubTotalMapStruct>? subTotalMaps,
) =>
    subTotalMaps?.map((e) => getSubTotalMapFirestoreData(e, true)).toList() ??
    [];
