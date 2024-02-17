// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PersonEntityImpl _$$PersonEntityImplFromJson(Map<String, dynamic> json) =>
    _$PersonEntityImpl(
      results: (json['results'] as List<dynamic>)
          .map((e) => Results.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PersonEntityImplToJson(_$PersonEntityImpl instance) =>
    <String, dynamic>{
      'results': instance.results,
    };

_$ResultsImpl _$$ResultsImplFromJson(Map<String, dynamic> json) =>
    _$ResultsImpl(
      post: json['post'] as String,
      password: json['password'] as String?,
      id: json['id'] as int,
      name: json['name'] as String,
      shift: json['shift'] as int?,
      nowShift: json['nowShift'] as int?,
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      status: json['status'] as String?,
      workplace: json['workplace'] as String?,
      forWhom: json['forWhom'] as String?,
      document: json['document'] as String?,
      comment: json['comment'] as String?,
      hoursDay: json['hoursDay'] as int?,
      hoursNight: json['hoursNight'] as int?,
    );

Map<String, dynamic> _$$ResultsImplToJson(_$ResultsImpl instance) =>
    <String, dynamic>{
      'post': instance.post,
      'password': instance.password,
      'id': instance.id,
      'name': instance.name,
      'shift': instance.shift,
      'nowShift': instance.nowShift,
      'date': instance.date?.toIso8601String(),
      'status': instance.status,
      'workplace': instance.workplace,
      'forWhom': instance.forWhom,
      'document': instance.document,
      'comment': instance.comment,
      'hoursDay': instance.hoursDay,
      'hoursNight': instance.hoursNight,
    };
