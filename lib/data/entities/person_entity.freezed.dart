// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'person_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PersonEntity _$PersonEntityFromJson(Map<String, dynamic> json) {
  return _PersonEntity.fromJson(json);
}

/// @nodoc
mixin _$PersonEntity {
  List<Results> get results => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Results> results) allPersonEntity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Results> results)? allPersonEntity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Results> results)? allPersonEntity,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PersonEntity value) allPersonEntity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PersonEntity value)? allPersonEntity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PersonEntity value)? allPersonEntity,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PersonEntityCopyWith<PersonEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonEntityCopyWith<$Res> {
  factory $PersonEntityCopyWith(
          PersonEntity value, $Res Function(PersonEntity) then) =
      _$PersonEntityCopyWithImpl<$Res, PersonEntity>;
  @useResult
  $Res call({List<Results> results});
}

/// @nodoc
class _$PersonEntityCopyWithImpl<$Res, $Val extends PersonEntity>
    implements $PersonEntityCopyWith<$Res> {
  _$PersonEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
  }) {
    return _then(_value.copyWith(
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Results>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PersonEntityImplCopyWith<$Res>
    implements $PersonEntityCopyWith<$Res> {
  factory _$$PersonEntityImplCopyWith(
          _$PersonEntityImpl value, $Res Function(_$PersonEntityImpl) then) =
      __$$PersonEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Results> results});
}

/// @nodoc
class __$$PersonEntityImplCopyWithImpl<$Res>
    extends _$PersonEntityCopyWithImpl<$Res, _$PersonEntityImpl>
    implements _$$PersonEntityImplCopyWith<$Res> {
  __$$PersonEntityImplCopyWithImpl(
      _$PersonEntityImpl _value, $Res Function(_$PersonEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
  }) {
    return _then(_$PersonEntityImpl(
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Results>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PersonEntityImpl with DiagnosticableTreeMixin implements _PersonEntity {
  const _$PersonEntityImpl({required final List<Results> results})
      : _results = results;

  factory _$PersonEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$PersonEntityImplFromJson(json);

  final List<Results> _results;
  @override
  List<Results> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PersonEntity.allPersonEntity(results: $results)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PersonEntity.allPersonEntity'))
      ..add(DiagnosticsProperty('results', results));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PersonEntityImpl &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PersonEntityImplCopyWith<_$PersonEntityImpl> get copyWith =>
      __$$PersonEntityImplCopyWithImpl<_$PersonEntityImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Results> results) allPersonEntity,
  }) {
    return allPersonEntity(results);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Results> results)? allPersonEntity,
  }) {
    return allPersonEntity?.call(results);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Results> results)? allPersonEntity,
    required TResult orElse(),
  }) {
    if (allPersonEntity != null) {
      return allPersonEntity(results);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PersonEntity value) allPersonEntity,
  }) {
    return allPersonEntity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PersonEntity value)? allPersonEntity,
  }) {
    return allPersonEntity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PersonEntity value)? allPersonEntity,
    required TResult orElse(),
  }) {
    if (allPersonEntity != null) {
      return allPersonEntity(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PersonEntityImplToJson(
      this,
    );
  }
}

abstract class _PersonEntity implements PersonEntity {
  const factory _PersonEntity({required final List<Results> results}) =
      _$PersonEntityImpl;

  factory _PersonEntity.fromJson(Map<String, dynamic> json) =
      _$PersonEntityImpl.fromJson;

  @override
  List<Results> get results;
  @override
  @JsonKey(ignore: true)
  _$$PersonEntityImplCopyWith<_$PersonEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Results _$ResultsFromJson(Map<String, dynamic> json) {
  return _Results.fromJson(json);
}

/// @nodoc
mixin _$Results {
  String get post => throw _privateConstructorUsedError;
  String get pasword => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int? get smena => throw _privateConstructorUsedError;
  DateTime? get date => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultsCopyWith<Results> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultsCopyWith<$Res> {
  factory $ResultsCopyWith(Results value, $Res Function(Results) then) =
      _$ResultsCopyWithImpl<$Res, Results>;
  @useResult
  $Res call(
      {String post,
      String pasword,
      int id,
      String name,
      int? smena,
      DateTime? date,
      String? status});
}

/// @nodoc
class _$ResultsCopyWithImpl<$Res, $Val extends Results>
    implements $ResultsCopyWith<$Res> {
  _$ResultsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? post = null,
    Object? pasword = null,
    Object? id = null,
    Object? name = null,
    Object? smena = freezed,
    Object? date = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      post: null == post
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as String,
      pasword: null == pasword
          ? _value.pasword
          : pasword // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      smena: freezed == smena
          ? _value.smena
          : smena // ignore: cast_nullable_to_non_nullable
              as int?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResultsImplCopyWith<$Res> implements $ResultsCopyWith<$Res> {
  factory _$$ResultsImplCopyWith(
          _$ResultsImpl value, $Res Function(_$ResultsImpl) then) =
      __$$ResultsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String post,
      String pasword,
      int id,
      String name,
      int? smena,
      DateTime? date,
      String? status});
}

/// @nodoc
class __$$ResultsImplCopyWithImpl<$Res>
    extends _$ResultsCopyWithImpl<$Res, _$ResultsImpl>
    implements _$$ResultsImplCopyWith<$Res> {
  __$$ResultsImplCopyWithImpl(
      _$ResultsImpl _value, $Res Function(_$ResultsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? post = null,
    Object? pasword = null,
    Object? id = null,
    Object? name = null,
    Object? smena = freezed,
    Object? date = freezed,
    Object? status = freezed,
  }) {
    return _then(_$ResultsImpl(
      post: null == post
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as String,
      pasword: null == pasword
          ? _value.pasword
          : pasword // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      smena: freezed == smena
          ? _value.smena
          : smena // ignore: cast_nullable_to_non_nullable
              as int?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResultsImpl with DiagnosticableTreeMixin implements _Results {
  const _$ResultsImpl(
      {required this.post,
      required this.pasword,
      required this.id,
      required this.name,
      this.smena,
      this.date,
      this.status});

  factory _$ResultsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResultsImplFromJson(json);

  @override
  final String post;
  @override
  final String pasword;
  @override
  final int id;
  @override
  final String name;
  @override
  final int? smena;
  @override
  final DateTime? date;
  @override
  final String? status;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Results(post: $post, pasword: $pasword, id: $id, name: $name, smena: $smena, date: $date, status: $status)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Results'))
      ..add(DiagnosticsProperty('post', post))
      ..add(DiagnosticsProperty('pasword', pasword))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('smena', smena))
      ..add(DiagnosticsProperty('date', date))
      ..add(DiagnosticsProperty('status', status));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultsImpl &&
            (identical(other.post, post) || other.post == post) &&
            (identical(other.pasword, pasword) || other.pasword == pasword) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.smena, smena) || other.smena == smena) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, post, pasword, id, name, smena, date, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultsImplCopyWith<_$ResultsImpl> get copyWith =>
      __$$ResultsImplCopyWithImpl<_$ResultsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResultsImplToJson(
      this,
    );
  }
}

abstract class _Results implements Results {
  const factory _Results(
      {required final String post,
      required final String pasword,
      required final int id,
      required final String name,
      final int? smena,
      final DateTime? date,
      final String? status}) = _$ResultsImpl;

  factory _Results.fromJson(Map<String, dynamic> json) = _$ResultsImpl.fromJson;

  @override
  String get post;
  @override
  String get pasword;
  @override
  int get id;
  @override
  String get name;
  @override
  int? get smena;
  @override
  DateTime? get date;
  @override
  String? get status;
  @override
  @JsonKey(ignore: true)
  _$$ResultsImplCopyWith<_$ResultsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
