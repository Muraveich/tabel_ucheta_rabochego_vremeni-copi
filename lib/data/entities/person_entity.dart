// ignore_for_file: non_constant_identifier_names

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'person_entity.freezed.dart';
part 'person_entity.g.dart';

@freezed
class PersonEntity with _$PersonEntity {
  const factory PersonEntity(
      {NowShift? now_shift, required List<Results> results}) = _PersonEntity;

  factory PersonEntity.fromJson(Map<String, dynamic> json) =>
      _$PersonEntityFromJson(json);
}

@freezed
class Results with _$Results {
  const factory Results(
      {required String post,
      String? password,
      required int id,
      required String name,
      int? shift,
      DateTime? date,
      String? status,
      String? workplace,
      String? forWhom,
      String? comment,
      int? hoursDay,
      int? hoursNight}) = _Results;

  factory Results.fromJson(Map<String, dynamic> json) =>
      _$ResultsFromJson(json);
}

@freezed
class NowShift with _$NowShift {
  const factory NowShift({
    required int now_shift,
  }) = _NowShift;

  factory NowShift.fromJson(Map<String, dynamic> json) =>
      _$NowShiftFromJson(json);
}
