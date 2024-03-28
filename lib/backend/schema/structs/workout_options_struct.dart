// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class WorkoutOptionsStruct extends FFFirebaseStruct {
  WorkoutOptionsStruct({
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

  static WorkoutOptionsStruct fromMap(Map<String, dynamic> data) =>
      WorkoutOptionsStruct(
        workoutName: data['workout_name'] as String?,
        workoutTagline: data['workout_tagline'] as String?,
      );

  static WorkoutOptionsStruct? maybeFromMap(dynamic data) => data is Map
      ? WorkoutOptionsStruct.fromMap(data.cast<String, dynamic>())
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

  static WorkoutOptionsStruct fromSerializableMap(Map<String, dynamic> data) =>
      WorkoutOptionsStruct(
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
  String toString() => 'WorkoutOptionsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is WorkoutOptionsStruct &&
        workoutName == other.workoutName &&
        workoutTagline == other.workoutTagline;
  }

  @override
  int get hashCode => const ListEquality().hash([workoutName, workoutTagline]);
}

WorkoutOptionsStruct createWorkoutOptionsStruct({
  String? workoutName,
  String? workoutTagline,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    WorkoutOptionsStruct(
      workoutName: workoutName,
      workoutTagline: workoutTagline,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

WorkoutOptionsStruct? updateWorkoutOptionsStruct(
  WorkoutOptionsStruct? workoutOptions, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    workoutOptions
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addWorkoutOptionsStructData(
  Map<String, dynamic> firestoreData,
  WorkoutOptionsStruct? workoutOptions,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (workoutOptions == null) {
    return;
  }
  if (workoutOptions.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && workoutOptions.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final workoutOptionsData =
      getWorkoutOptionsFirestoreData(workoutOptions, forFieldValue);
  final nestedData =
      workoutOptionsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = workoutOptions.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getWorkoutOptionsFirestoreData(
  WorkoutOptionsStruct? workoutOptions, [
  bool forFieldValue = false,
]) {
  if (workoutOptions == null) {
    return {};
  }
  final firestoreData = mapToFirestore(workoutOptions.toMap());

  // Add any Firestore field values
  workoutOptions.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getWorkoutOptionsListFirestoreData(
  List<WorkoutOptionsStruct>? workoutOptionss,
) =>
    workoutOptionss
        ?.map((e) => getWorkoutOptionsFirestoreData(e, true))
        .toList() ??
    [];
