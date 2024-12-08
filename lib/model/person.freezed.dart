// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'person.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Person _$PersonFromJson(Map<String, dynamic> json) {
  return _Person.fromJson(json);
}

/// @nodoc
mixin _$Person {
  String get name => throw _privateConstructorUsedError;
  int get age => throw _privateConstructorUsedError;
  List<String> get books => throw _privateConstructorUsedError;
  List<Student> get students => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PersonCopyWith<Person> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonCopyWith<$Res> {
  factory $PersonCopyWith(Person value, $Res Function(Person) then) =
      _$PersonCopyWithImpl<$Res, Person>;
  @useResult
  $Res call({String name, int age, List<String> books, List<Student> students});
}

/// @nodoc
class _$PersonCopyWithImpl<$Res, $Val extends Person>
    implements $PersonCopyWith<$Res> {
  _$PersonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? age = null,
    Object? books = null,
    Object? students = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      books: null == books
          ? _value.books
          : books // ignore: cast_nullable_to_non_nullable
              as List<String>,
      students: null == students
          ? _value.students
          : students // ignore: cast_nullable_to_non_nullable
              as List<Student>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PersonImplCopyWith<$Res> implements $PersonCopyWith<$Res> {
  factory _$$PersonImplCopyWith(
          _$PersonImpl value, $Res Function(_$PersonImpl) then) =
      __$$PersonImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, int age, List<String> books, List<Student> students});
}

/// @nodoc
class __$$PersonImplCopyWithImpl<$Res>
    extends _$PersonCopyWithImpl<$Res, _$PersonImpl>
    implements _$$PersonImplCopyWith<$Res> {
  __$$PersonImplCopyWithImpl(
      _$PersonImpl _value, $Res Function(_$PersonImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? age = null,
    Object? books = null,
    Object? students = null,
  }) {
    return _then(_$PersonImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      books: null == books
          ? _value.books
          : books // ignore: cast_nullable_to_non_nullable
              as List<String>,
      students: null == students
          ? _value.students
          : students // ignore: cast_nullable_to_non_nullable
              as List<Student>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PersonImpl extends _Person with DiagnosticableTreeMixin {
  _$PersonImpl(
      {required this.name,
      required this.age,
      required this.books,
      required this.students})
      : assert(name.isNotEmpty, 'name cannot be empty'),
        assert(age >= 0, 'age cannot < 0'),
        super._();

  factory _$PersonImpl.fromJson(Map<String, dynamic> json) =>
      _$$PersonImplFromJson(json);

  @override
  final String name;
  @override
  final int age;
  @override
  final List<String> books;
  @override
  final List<Student> students;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Person(name: $name, age: $age, books: $books, students: $students)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Person'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('age', age))
      ..add(DiagnosticsProperty('books', books))
      ..add(DiagnosticsProperty('students', students));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PersonImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.age, age) || other.age == age) &&
            const DeepCollectionEquality().equals(other.books, books) &&
            const DeepCollectionEquality().equals(other.students, students));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      age,
      const DeepCollectionEquality().hash(books),
      const DeepCollectionEquality().hash(students));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PersonImplCopyWith<_$PersonImpl> get copyWith =>
      __$$PersonImplCopyWithImpl<_$PersonImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PersonImplToJson(
      this,
    );
  }
}

abstract class _Person extends Person {
  factory _Person(
      {required final String name,
      required final int age,
      required final List<String> books,
      required final List<Student> students}) = _$PersonImpl;
  _Person._() : super._();

  factory _Person.fromJson(Map<String, dynamic> json) = _$PersonImpl.fromJson;

  @override
  String get name;
  @override
  int get age;
  @override
  List<String> get books;
  @override
  List<Student> get students;
  @override
  @JsonKey(ignore: true)
  _$$PersonImplCopyWith<_$PersonImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Student _$StudentFromJson(Map<String, dynamic> json) {
  return _Student.fromJson(json);
}

/// @nodoc
mixin _$Student {
  int get score => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StudentCopyWith<Student> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentCopyWith<$Res> {
  factory $StudentCopyWith(Student value, $Res Function(Student) then) =
      _$StudentCopyWithImpl<$Res, Student>;
  @useResult
  $Res call({int score});
}

/// @nodoc
class _$StudentCopyWithImpl<$Res, $Val extends Student>
    implements $StudentCopyWith<$Res> {
  _$StudentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? score = null,
  }) {
    return _then(_value.copyWith(
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StudentImplCopyWith<$Res> implements $StudentCopyWith<$Res> {
  factory _$$StudentImplCopyWith(
          _$StudentImpl value, $Res Function(_$StudentImpl) then) =
      __$$StudentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int score});
}

/// @nodoc
class __$$StudentImplCopyWithImpl<$Res>
    extends _$StudentCopyWithImpl<$Res, _$StudentImpl>
    implements _$$StudentImplCopyWith<$Res> {
  __$$StudentImplCopyWithImpl(
      _$StudentImpl _value, $Res Function(_$StudentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? score = null,
  }) {
    return _then(_$StudentImpl(
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StudentImpl with DiagnosticableTreeMixin implements _Student {
  _$StudentImpl({required this.score});

  factory _$StudentImpl.fromJson(Map<String, dynamic> json) =>
      _$$StudentImplFromJson(json);

  @override
  final int score;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Student(score: $score)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Student'))
      ..add(DiagnosticsProperty('score', score));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentImpl &&
            (identical(other.score, score) || other.score == score));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, score);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StudentImplCopyWith<_$StudentImpl> get copyWith =>
      __$$StudentImplCopyWithImpl<_$StudentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StudentImplToJson(
      this,
    );
  }
}

abstract class _Student implements Student {
  factory _Student({required final int score}) = _$StudentImpl;

  factory _Student.fromJson(Map<String, dynamic> json) = _$StudentImpl.fromJson;

  @override
  int get score;
  @override
  @JsonKey(ignore: true)
  _$$StudentImplCopyWith<_$StudentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MyResponse _$MyResponseFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'default':
      return MyResponseData.fromJson(json);
    case 'special':
      return MyResponseSpecial.fromJson(json);
    case 'error':
      return MyResponseError.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'MyResponse',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$MyResponse {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String a) $default, {
    required TResult Function(String a, int b) special,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String a)? $default, {
    TResult? Function(String a, int b)? special,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String a)? $default, {
    TResult Function(String a, int b)? special,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(MyResponseData value) $default, {
    required TResult Function(MyResponseSpecial value) special,
    required TResult Function(MyResponseError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(MyResponseData value)? $default, {
    TResult? Function(MyResponseSpecial value)? special,
    TResult? Function(MyResponseError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(MyResponseData value)? $default, {
    TResult Function(MyResponseSpecial value)? special,
    TResult Function(MyResponseError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyResponseCopyWith<$Res> {
  factory $MyResponseCopyWith(
          MyResponse value, $Res Function(MyResponse) then) =
      _$MyResponseCopyWithImpl<$Res, MyResponse>;
}

/// @nodoc
class _$MyResponseCopyWithImpl<$Res, $Val extends MyResponse>
    implements $MyResponseCopyWith<$Res> {
  _$MyResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$MyResponseDataImplCopyWith<$Res> {
  factory _$$MyResponseDataImplCopyWith(_$MyResponseDataImpl value,
          $Res Function(_$MyResponseDataImpl) then) =
      __$$MyResponseDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String a});
}

/// @nodoc
class __$$MyResponseDataImplCopyWithImpl<$Res>
    extends _$MyResponseCopyWithImpl<$Res, _$MyResponseDataImpl>
    implements _$$MyResponseDataImplCopyWith<$Res> {
  __$$MyResponseDataImplCopyWithImpl(
      _$MyResponseDataImpl _value, $Res Function(_$MyResponseDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = null,
  }) {
    return _then(_$MyResponseDataImpl(
      null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MyResponseDataImpl
    with DiagnosticableTreeMixin
    implements MyResponseData {
  const _$MyResponseDataImpl(this.a, {final String? $type})
      : $type = $type ?? 'default';

  factory _$MyResponseDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$MyResponseDataImplFromJson(json);

  @override
  final String a;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MyResponse(a: $a)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MyResponse'))
      ..add(DiagnosticsProperty('a', a));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyResponseDataImpl &&
            (identical(other.a, a) || other.a == a));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, a);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MyResponseDataImplCopyWith<_$MyResponseDataImpl> get copyWith =>
      __$$MyResponseDataImplCopyWithImpl<_$MyResponseDataImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String a) $default, {
    required TResult Function(String a, int b) special,
    required TResult Function(String message) error,
  }) {
    return $default(a);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String a)? $default, {
    TResult? Function(String a, int b)? special,
    TResult? Function(String message)? error,
  }) {
    return $default?.call(a);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String a)? $default, {
    TResult Function(String a, int b)? special,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(a);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(MyResponseData value) $default, {
    required TResult Function(MyResponseSpecial value) special,
    required TResult Function(MyResponseError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(MyResponseData value)? $default, {
    TResult? Function(MyResponseSpecial value)? special,
    TResult? Function(MyResponseError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(MyResponseData value)? $default, {
    TResult Function(MyResponseSpecial value)? special,
    TResult Function(MyResponseError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$MyResponseDataImplToJson(
      this,
    );
  }
}

abstract class MyResponseData implements MyResponse {
  const factory MyResponseData(final String a) = _$MyResponseDataImpl;

  factory MyResponseData.fromJson(Map<String, dynamic> json) =
      _$MyResponseDataImpl.fromJson;

  String get a;
  @JsonKey(ignore: true)
  _$$MyResponseDataImplCopyWith<_$MyResponseDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MyResponseSpecialImplCopyWith<$Res> {
  factory _$$MyResponseSpecialImplCopyWith(_$MyResponseSpecialImpl value,
          $Res Function(_$MyResponseSpecialImpl) then) =
      __$$MyResponseSpecialImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String a, int b});
}

/// @nodoc
class __$$MyResponseSpecialImplCopyWithImpl<$Res>
    extends _$MyResponseCopyWithImpl<$Res, _$MyResponseSpecialImpl>
    implements _$$MyResponseSpecialImplCopyWith<$Res> {
  __$$MyResponseSpecialImplCopyWithImpl(_$MyResponseSpecialImpl _value,
      $Res Function(_$MyResponseSpecialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = null,
    Object? b = null,
  }) {
    return _then(_$MyResponseSpecialImpl(
      null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as String,
      null == b
          ? _value.b
          : b // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MyResponseSpecialImpl
    with DiagnosticableTreeMixin
    implements MyResponseSpecial {
  const _$MyResponseSpecialImpl(this.a, this.b, {final String? $type})
      : $type = $type ?? 'special';

  factory _$MyResponseSpecialImpl.fromJson(Map<String, dynamic> json) =>
      _$$MyResponseSpecialImplFromJson(json);

  @override
  final String a;
  @override
  final int b;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MyResponse.special(a: $a, b: $b)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MyResponse.special'))
      ..add(DiagnosticsProperty('a', a))
      ..add(DiagnosticsProperty('b', b));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyResponseSpecialImpl &&
            (identical(other.a, a) || other.a == a) &&
            (identical(other.b, b) || other.b == b));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, a, b);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MyResponseSpecialImplCopyWith<_$MyResponseSpecialImpl> get copyWith =>
      __$$MyResponseSpecialImplCopyWithImpl<_$MyResponseSpecialImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String a) $default, {
    required TResult Function(String a, int b) special,
    required TResult Function(String message) error,
  }) {
    return special(a, b);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String a)? $default, {
    TResult? Function(String a, int b)? special,
    TResult? Function(String message)? error,
  }) {
    return special?.call(a, b);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String a)? $default, {
    TResult Function(String a, int b)? special,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (special != null) {
      return special(a, b);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(MyResponseData value) $default, {
    required TResult Function(MyResponseSpecial value) special,
    required TResult Function(MyResponseError value) error,
  }) {
    return special(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(MyResponseData value)? $default, {
    TResult? Function(MyResponseSpecial value)? special,
    TResult? Function(MyResponseError value)? error,
  }) {
    return special?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(MyResponseData value)? $default, {
    TResult Function(MyResponseSpecial value)? special,
    TResult Function(MyResponseError value)? error,
    required TResult orElse(),
  }) {
    if (special != null) {
      return special(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$MyResponseSpecialImplToJson(
      this,
    );
  }
}

abstract class MyResponseSpecial implements MyResponse {
  const factory MyResponseSpecial(final String a, final int b) =
      _$MyResponseSpecialImpl;

  factory MyResponseSpecial.fromJson(Map<String, dynamic> json) =
      _$MyResponseSpecialImpl.fromJson;

  String get a;
  int get b;
  @JsonKey(ignore: true)
  _$$MyResponseSpecialImplCopyWith<_$MyResponseSpecialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MyResponseErrorImplCopyWith<$Res> {
  factory _$$MyResponseErrorImplCopyWith(_$MyResponseErrorImpl value,
          $Res Function(_$MyResponseErrorImpl) then) =
      __$$MyResponseErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$MyResponseErrorImplCopyWithImpl<$Res>
    extends _$MyResponseCopyWithImpl<$Res, _$MyResponseErrorImpl>
    implements _$$MyResponseErrorImplCopyWith<$Res> {
  __$$MyResponseErrorImplCopyWithImpl(
      _$MyResponseErrorImpl _value, $Res Function(_$MyResponseErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$MyResponseErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MyResponseErrorImpl
    with DiagnosticableTreeMixin
    implements MyResponseError {
  const _$MyResponseErrorImpl(this.message, {final String? $type})
      : $type = $type ?? 'error';

  factory _$MyResponseErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$MyResponseErrorImplFromJson(json);

  @override
  final String message;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MyResponse.error(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MyResponse.error'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyResponseErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MyResponseErrorImplCopyWith<_$MyResponseErrorImpl> get copyWith =>
      __$$MyResponseErrorImplCopyWithImpl<_$MyResponseErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String a) $default, {
    required TResult Function(String a, int b) special,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String a)? $default, {
    TResult? Function(String a, int b)? special,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String a)? $default, {
    TResult Function(String a, int b)? special,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(MyResponseData value) $default, {
    required TResult Function(MyResponseSpecial value) special,
    required TResult Function(MyResponseError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(MyResponseData value)? $default, {
    TResult? Function(MyResponseSpecial value)? special,
    TResult? Function(MyResponseError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(MyResponseData value)? $default, {
    TResult Function(MyResponseSpecial value)? special,
    TResult Function(MyResponseError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$MyResponseErrorImplToJson(
      this,
    );
  }
}

abstract class MyResponseError implements MyResponse {
  const factory MyResponseError(final String message) = _$MyResponseErrorImpl;

  factory MyResponseError.fromJson(Map<String, dynamic> json) =
      _$MyResponseErrorImpl.fromJson;

  String get message;
  @JsonKey(ignore: true)
  _$$MyResponseErrorImplCopyWith<_$MyResponseErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MyModel _$MyModelFromJson(
  Map<String, dynamic> json,
) {
  return MyModelData.fromJson(
    json,
  );
}

/// @nodoc
mixin _$MyModel {
  @PersonResponseConverter()
  MyResponse get myResponse => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MyModelCopyWith<MyModel> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyModelCopyWith<$Res> {
  factory $MyModelCopyWith(MyModel value, $Res Function(MyModel) then) =
      _$MyModelCopyWithImpl<$Res, MyModel>;
  @useResult
  $Res call({@PersonResponseConverter() MyResponse myResponse});

  $MyResponseCopyWith<$Res> get myResponse;
}

/// @nodoc
class _$MyModelCopyWithImpl<$Res, $Val extends MyModel>
    implements $MyModelCopyWith<$Res> {
  _$MyModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? myResponse = null,
  }) {
    return _then(_value.copyWith(
      myResponse: null == myResponse
          ? _value.myResponse
          : myResponse // ignore: cast_nullable_to_non_nullable
              as MyResponse,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MyResponseCopyWith<$Res> get myResponse {
    return $MyResponseCopyWith<$Res>(_value.myResponse, (value) {
      return _then(_value.copyWith(myResponse: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MyModelDataImplCopyWith<$Res>
    implements $MyModelCopyWith<$Res> {
  factory _$$MyModelDataImplCopyWith(
          _$MyModelDataImpl value, $Res Function(_$MyModelDataImpl) then) =
      __$$MyModelDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@PersonResponseConverter() MyResponse myResponse});

  @override
  $MyResponseCopyWith<$Res> get myResponse;
}

/// @nodoc
class __$$MyModelDataImplCopyWithImpl<$Res>
    extends _$MyModelCopyWithImpl<$Res, _$MyModelDataImpl>
    implements _$$MyModelDataImplCopyWith<$Res> {
  __$$MyModelDataImplCopyWithImpl(
      _$MyModelDataImpl _value, $Res Function(_$MyModelDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? myResponse = null,
  }) {
    return _then(_$MyModelDataImpl(
      null == myResponse
          ? _value.myResponse
          : myResponse // ignore: cast_nullable_to_non_nullable
              as MyResponse,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MyModelDataImpl with DiagnosticableTreeMixin implements MyModelData {
  const _$MyModelDataImpl(@PersonResponseConverter() this.myResponse);

  factory _$MyModelDataImpl.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$$MyModelDataImplFromJson(
        json,
      );

  @override
  @PersonResponseConverter()
  final MyResponse myResponse;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MyModel(myResponse: $myResponse)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MyModel'))
      ..add(DiagnosticsProperty('myResponse', myResponse));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyModelDataImpl &&
            (identical(other.myResponse, myResponse) ||
                other.myResponse == myResponse));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, myResponse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MyModelDataImplCopyWith<_$MyModelDataImpl> get copyWith =>
      __$$MyModelDataImplCopyWithImpl<_$MyModelDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MyModelDataImplToJson(
      this,
    );
  }
}

abstract class MyModelData implements MyModel {
  const factory MyModelData(
          @PersonResponseConverter() final MyResponse myResponse) =
      _$MyModelDataImpl;

  factory MyModelData.fromJson(
    Map<String, dynamic> json,
  ) = _$MyModelDataImpl.fromJson;

  @override
  @PersonResponseConverter()
  MyResponse get myResponse;
  @override
  @JsonKey(ignore: true)
  _$$MyModelDataImplCopyWith<_$MyModelDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
