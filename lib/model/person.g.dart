// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PersonImpl _$$PersonImplFromJson(Map<String, dynamic> json) => _$PersonImpl(
      name: json['name'] as String,
      age: (json['age'] as num).toInt(),
      books: (json['books'] as List<dynamic>).map((e) => e as String).toList(),
      students: (json['students'] as List<dynamic>)
          .map((e) => Student.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PersonImplToJson(_$PersonImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'age': instance.age,
      'books': instance.books,
      'students': instance.students,
    };

_$StudentImpl _$$StudentImplFromJson(Map<String, dynamic> json) =>
    _$StudentImpl(
      score: (json['score'] as num).toInt(),
    );

Map<String, dynamic> _$$StudentImplToJson(_$StudentImpl instance) =>
    <String, dynamic>{
      'score': instance.score,
    };

_$MyResponseDataImpl _$$MyResponseDataImplFromJson(Map<String, dynamic> json) =>
    _$MyResponseDataImpl(
      json['a'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$MyResponseDataImplToJson(
        _$MyResponseDataImpl instance) =>
    <String, dynamic>{
      'a': instance.a,
      'runtimeType': instance.$type,
    };

_$MyResponseSpecialImpl _$$MyResponseSpecialImplFromJson(
        Map<String, dynamic> json) =>
    _$MyResponseSpecialImpl(
      json['a'] as String,
      (json['b'] as num).toInt(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$MyResponseSpecialImplToJson(
        _$MyResponseSpecialImpl instance) =>
    <String, dynamic>{
      'a': instance.a,
      'b': instance.b,
      'runtimeType': instance.$type,
    };

_$MyResponseErrorImpl _$$MyResponseErrorImplFromJson(
        Map<String, dynamic> json) =>
    _$MyResponseErrorImpl(
      json['message'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$MyResponseErrorImplToJson(
        _$MyResponseErrorImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'runtimeType': instance.$type,
    };

_$MyModelDataImpl _$$MyModelDataImplFromJson(Map<String, dynamic> json) =>
    _$MyModelDataImpl(
      const PersonResponseConverter()
          .fromJson(json['myResponse'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MyModelDataImplToJson(_$MyModelDataImpl instance) =>
    <String, dynamic>{
      'myResponse': const PersonResponseConverter().toJson(instance.myResponse),
    };
