import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'person_entity.freezed.dart';
part 'person_entity.g.dart';

// enum StatusEnum { rv, otpusk, bolnichnyi, den, noch, dopOtp, progul, perevod }

@freezed
class PersonEntity with _$PersonEntity {
  const factory PersonEntity.allPersonEntity({required List<Results> results}) =
      _PersonEntity;

  factory PersonEntity.fromJson(Map<String, dynamic> json) =>
      _$PersonEntityFromJson(json);
}

@freezed
class Results with _$Results {
  const factory Results({
    required String post,
    required String pasword,
    required int id,
    required String name,
    int? smena,
    DateTime? date,
    String? status,
  }) = _Results;

  factory Results.fromJson(Map<String, dynamic> json) =>
      _$ResultsFromJson(json);
}
