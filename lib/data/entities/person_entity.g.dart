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
      pasword: json['pasword'] as String,
      id: json['id'] as int,
      name: json['name'] as String,
      smena: json['smena'] as int?,
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      status: json['status'] as String?,
    );

Map<String, dynamic> _$$ResultsImplToJson(_$ResultsImpl instance) =>
    <String, dynamic>{
      'post': instance.post,
      'pasword': instance.pasword,
      'id': instance.id,
      'name': instance.name,
      'smena': instance.smena,
      'date': instance.date?.toIso8601String(),
      'status': instance.status,
    };
