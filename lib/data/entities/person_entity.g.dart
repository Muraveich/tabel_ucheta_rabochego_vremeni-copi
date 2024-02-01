// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PersonEntityImpl _$$PersonEntityImplFromJson(Map<String, dynamic> json) =>
    _$PersonEntityImpl(
      now_shift: json['now_shift'] == null
          ? null
          : NowShift.fromJson(json['now_shift'] as Map<String, dynamic>),
      results: (json['results'] as List<dynamic>)
          .map((e) => Results.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PersonEntityImplToJson(_$PersonEntityImpl instance) =>
    <String, dynamic>{
      'now_shift': instance.now_shift,
      'results': instance.results,
    };

_$ResultsImpl _$$ResultsImplFromJson(Map<String, dynamic> json) =>
    _$ResultsImpl(
      post: json['post'] as String,
      password: json['password'] as String?,
      id: json['id'] as int,
      name: json['name'] as String,
      shift: json['shift'] as int?,
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      status: json['status'] as String?,
      workplace: json['workplace'] as String?,
      forWhom: json['forWhom'] as String?,
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
      'date': instance.date?.toIso8601String(),
      'status': instance.status,
      'workplace': instance.workplace,
      'forWhom': instance.forWhom,
      'comment': instance.comment,
      'hoursDay': instance.hoursDay,
      'hoursNight': instance.hoursNight,
    };

_$NowShiftImpl _$$NowShiftImplFromJson(Map<String, dynamic> json) =>
    _$NowShiftImpl(
      now_shift: json['now_shift'] as int,
    );

Map<String, dynamic> _$$NowShiftImplToJson(_$NowShiftImpl instance) =>
    <String, dynamic>{
      'now_shift': instance.now_shift,
    };
