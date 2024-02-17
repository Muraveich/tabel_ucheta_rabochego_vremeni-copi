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
    return 'PersonEntity(results: $results)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PersonEntity'))
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
  String? get password => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int? get shift => throw _privateConstructorUsedError;
  int? get nowShift => throw _privateConstructorUsedError;
  DateTime? get date => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get workplace => throw _privateConstructorUsedError;
  String? get forWhom => throw _privateConstructorUsedError;
  String? get document => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;
  int? get hoursDay => throw _privateConstructorUsedError;
  int? get hoursNight => throw _privateConstructorUsedError;

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
      String? password,
      int id,
      String name,
      int? shift,
      int? nowShift,
      DateTime? date,
      String? status,
      String? workplace,
      String? forWhom,
      String? document,
      String? comment,
      int? hoursDay,
      int? hoursNight});
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
    Object? password = freezed,
    Object? id = null,
    Object? name = null,
    Object? shift = freezed,
    Object? nowShift = freezed,
    Object? date = freezed,
    Object? status = freezed,
    Object? workplace = freezed,
    Object? forWhom = freezed,
    Object? document = freezed,
    Object? comment = freezed,
    Object? hoursDay = freezed,
    Object? hoursNight = freezed,
  }) {
    return _then(_value.copyWith(
      post: null == post
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as String,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      shift: freezed == shift
          ? _value.shift
          : shift // ignore: cast_nullable_to_non_nullable
              as int?,
      nowShift: freezed == nowShift
          ? _value.nowShift
          : nowShift // ignore: cast_nullable_to_non_nullable
              as int?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      workplace: freezed == workplace
          ? _value.workplace
          : workplace // ignore: cast_nullable_to_non_nullable
              as String?,
      forWhom: freezed == forWhom
          ? _value.forWhom
          : forWhom // ignore: cast_nullable_to_non_nullable
              as String?,
      document: freezed == document
          ? _value.document
          : document // ignore: cast_nullable_to_non_nullable
              as String?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      hoursDay: freezed == hoursDay
          ? _value.hoursDay
          : hoursDay // ignore: cast_nullable_to_non_nullable
              as int?,
      hoursNight: freezed == hoursNight
          ? _value.hoursNight
          : hoursNight // ignore: cast_nullable_to_non_nullable
              as int?,
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
      String? password,
      int id,
      String name,
      int? shift,
      int? nowShift,
      DateTime? date,
      String? status,
      String? workplace,
      String? forWhom,
      String? document,
      String? comment,
      int? hoursDay,
      int? hoursNight});
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
    Object? password = freezed,
    Object? id = null,
    Object? name = null,
    Object? shift = freezed,
    Object? nowShift = freezed,
    Object? date = freezed,
    Object? status = freezed,
    Object? workplace = freezed,
    Object? forWhom = freezed,
    Object? document = freezed,
    Object? comment = freezed,
    Object? hoursDay = freezed,
    Object? hoursNight = freezed,
  }) {
    return _then(_$ResultsImpl(
      post: null == post
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as String,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      shift: freezed == shift
          ? _value.shift
          : shift // ignore: cast_nullable_to_non_nullable
              as int?,
      nowShift: freezed == nowShift
          ? _value.nowShift
          : nowShift // ignore: cast_nullable_to_non_nullable
              as int?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      workplace: freezed == workplace
          ? _value.workplace
          : workplace // ignore: cast_nullable_to_non_nullable
              as String?,
      forWhom: freezed == forWhom
          ? _value.forWhom
          : forWhom // ignore: cast_nullable_to_non_nullable
              as String?,
      document: freezed == document
          ? _value.document
          : document // ignore: cast_nullable_to_non_nullable
              as String?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      hoursDay: freezed == hoursDay
          ? _value.hoursDay
          : hoursDay // ignore: cast_nullable_to_non_nullable
              as int?,
      hoursNight: freezed == hoursNight
          ? _value.hoursNight
          : hoursNight // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResultsImpl with DiagnosticableTreeMixin implements _Results {
  const _$ResultsImpl(
      {required this.post,
      this.password,
      required this.id,
      required this.name,
      this.shift,
      this.nowShift,
      this.date,
      this.status,
      this.workplace,
      this.forWhom,
      this.document,
      this.comment,
      this.hoursDay,
      this.hoursNight});

  factory _$ResultsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResultsImplFromJson(json);

  @override
  final String post;
  @override
  final String? password;
  @override
  final int id;
  @override
  final String name;
  @override
  final int? shift;
  @override
  final int? nowShift;
  @override
  final DateTime? date;
  @override
  final String? status;
  @override
  final String? workplace;
  @override
  final String? forWhom;
  @override
  final String? document;
  @override
  final String? comment;
  @override
  final int? hoursDay;
  @override
  final int? hoursNight;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Results(post: $post, password: $password, id: $id, name: $name, shift: $shift, nowShift: $nowShift, date: $date, status: $status, workplace: $workplace, forWhom: $forWhom, document: $document, comment: $comment, hoursDay: $hoursDay, hoursNight: $hoursNight)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Results'))
      ..add(DiagnosticsProperty('post', post))
      ..add(DiagnosticsProperty('password', password))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('shift', shift))
      ..add(DiagnosticsProperty('nowShift', nowShift))
      ..add(DiagnosticsProperty('date', date))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('workplace', workplace))
      ..add(DiagnosticsProperty('forWhom', forWhom))
      ..add(DiagnosticsProperty('document', document))
      ..add(DiagnosticsProperty('comment', comment))
      ..add(DiagnosticsProperty('hoursDay', hoursDay))
      ..add(DiagnosticsProperty('hoursNight', hoursNight));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultsImpl &&
            (identical(other.post, post) || other.post == post) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.shift, shift) || other.shift == shift) &&
            (identical(other.nowShift, nowShift) ||
                other.nowShift == nowShift) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.workplace, workplace) ||
                other.workplace == workplace) &&
            (identical(other.forWhom, forWhom) || other.forWhom == forWhom) &&
            (identical(other.document, document) ||
                other.document == document) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.hoursDay, hoursDay) ||
                other.hoursDay == hoursDay) &&
            (identical(other.hoursNight, hoursNight) ||
                other.hoursNight == hoursNight));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      post,
      password,
      id,
      name,
      shift,
      nowShift,
      date,
      status,
      workplace,
      forWhom,
      document,
      comment,
      hoursDay,
      hoursNight);

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
      final String? password,
      required final int id,
      required final String name,
      final int? shift,
      final int? nowShift,
      final DateTime? date,
      final String? status,
      final String? workplace,
      final String? forWhom,
      final String? document,
      final String? comment,
      final int? hoursDay,
      final int? hoursNight}) = _$ResultsImpl;

  factory _Results.fromJson(Map<String, dynamic> json) = _$ResultsImpl.fromJson;

  @override
  String get post;
  @override
  String? get password;
  @override
  int get id;
  @override
  String get name;
  @override
  int? get shift;
  @override
  int? get nowShift;
  @override
  DateTime? get date;
  @override
  String? get status;
  @override
  String? get workplace;
  @override
  String? get forWhom;
  @override
  String? get document;
  @override
  String? get comment;
  @override
  int? get hoursDay;
  @override
  int? get hoursNight;
  @override
  @JsonKey(ignore: true)
  _$$ResultsImplCopyWith<_$ResultsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
