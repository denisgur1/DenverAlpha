// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class DietOptionsStruct extends FFFirebaseStruct {
  DietOptionsStruct({
    String? workoutName,
    String? workoutTagline,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _workoutName = workoutName,
        _workoutTagline = workoutTagline,
        super(firestoreUtilData);

  // "workout_name" field.
  String? _workoutName;
  String get workoutName => _workoutName ?? '';
  set workoutName(String? val) => _workoutName = val;
  bool hasWorkoutName() => _workoutName != null;

  // "workout_tagline" field.
  String? _workoutTagline;
  String get workoutTagline => _workoutTagline ?? '';
  set workoutTagline(String? val) => _workoutTagline = val;
  bool hasWorkoutTagline() => _workoutTagline != null;

  static DietOptionsStruct fromMap(Map<String, dynamic> data) =>
      DietOptionsStruct(
        workoutName: data['workout_name'] as String?,
        workoutTagline: data['workout_tagline'] as String?,
      );

  static DietOptionsStruct? maybeFromMap(dynamic data) => data is Map
      ? DietOptionsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'workout_name': _workoutName,
        'workout_tagline': _workoutTagline,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'workout_name': serializeParam(
          _workoutName,
          ParamType.String,
        ),
        'workout_tagline': serializeParam(
          _workoutTagline,
          ParamType.String,
        ),
      }.withoutNulls;

  static DietOptionsStruct fromSerializableMap(Map<String, dynamic> data) =>
      DietOptionsStruct(
        workoutName: deserializeParam(
          data['workout_name'],
          ParamType.String,
          false,
        ),
        workoutTagline: deserializeParam(
          data['workout_tagline'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DietOptionsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DietOptionsStruct &&
        workoutName == other.workoutName &&
        workoutTagline == other.workoutTagline;
  }

  @override
  int get hashCode => const ListEquality().hash([workoutName, workoutTagline]);
}

DietOptionsStruct createDietOptionsStruct({
  String? workoutName,
  String? workoutTagline,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    DietOptionsStruct(
      workoutName: workoutName,
      workoutTagline: workoutTagline,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

DietOptionsStruct? updateDietOptionsStruct(
  DietOptionsStruct? dietOptions, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    dietOptions
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addDietOptionsStructData(
  Map<String, dynamic> firestoreData,
  DietOptionsStruct? dietOptions,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (dietOptions == null) {
    return;
  }
  if (dietOptions.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && dietOptions.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final dietOptionsData =
      getDietOptionsFirestoreData(dietOptions, forFieldValue);
  final nestedData =
      dietOptionsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = dietOptions.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getDietOptionsFirestoreData(
  DietOptionsStruct? dietOptions, [
  bool forFieldValue = false,
]) {
  if (dietOptions == null) {
    return {};
  }
  final firestoreData = mapToFirestore(dietOptions.toMap());

  // Add any Firestore field values
  dietOptions.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getDietOptionsListFirestoreData(
  List<DietOptionsStruct>? dietOptionss,
) =>
    dietOptionss?.map((e) => getDietOptionsFirestoreData(e, true)).toList() ??
    [];
