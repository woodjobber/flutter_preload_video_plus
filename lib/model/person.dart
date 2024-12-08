// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import 'package:flutter_preload_videos/model/response_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'person.freezed.dart';
part 'person.g.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class Person with _$Person {
  @Assert('name.isNotEmpty', 'name cannot be empty')
  @Assert('age>=0', 'age cannot < 0')
  factory Person({
    required String name,
    required int age,
    required List<String> books,
    required List<Student> students,
  }) = _Person;
  Person._();
  factory Person.fromJson(Map<String, Object?> json) => _$PersonFromJson(json);

  void method() {}
}

@freezed
class Student with _$Student {
  factory Student({required int score}) = _Student;
  factory Student.fromJson(Map<String, Object?> json) =>
      _$StudentFromJson(json);
}

@freezed
sealed class MyResponse with _$MyResponse {
  const factory MyResponse(String a) = MyResponseData;
  const factory MyResponse.special(String a, int b) = MyResponseSpecial;
  const factory MyResponse.error(String message) = MyResponseError;

  factory MyResponse.fromJson(Map<String, dynamic> json) =>
      _$MyResponseFromJson(json);
}

@Freezed(genericArgumentFactories: true)
class MyModel with _$MyModel {
  const factory MyModel(@PersonResponseConverter() MyResponse myResponse) =
      MyModelData;
  factory MyModel.fromJson(Map<String, dynamic> json) =>
      _$MyModelFromJson(json);
}
