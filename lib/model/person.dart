// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import 'package:flutter_preload_videos/model/response_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'person.freezed.dart';
part 'person.g.dart';

@Freezed(makeCollectionsUnmodifiable: false, map: FreezedMapOptions())
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
  factory Person.runner() = _Runner;
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

/// 类修饰符 base
///
/// extends 能被使用，implements 不能
///
base class A {
  void a() {}
}

/// 子类必须标记： sealed or final or base
sealed class A1 extends A {}

/// 类修饰符 interface
///
/// extends 不能被使用，implements 能
///
interface class B {}

/// final
///
/// 不能被 extends,implements
///
final class C {}

/// sealed
///
/// 自身不能被实例.隐式的抽象类型
///
/// 适应 extends,implements
///
sealed class D {
  // 必须得有一个 构造函数，子类才能被实例化 否则，no generative constructors (没有 生成构造函数 Generative constructors)
  // 验证： 注释掉 D._()，看D2提示错误信息
  // 构造器类型：Generative,Default（是一个生成构造器且没有参数和名称）,Named,Constant,Factory,Redirecting等构造器.
  D._();
  factory D() = D1;
}

class D1 implements D {}

class D2 extends D {
  D2() : super._();
}

class Single {
  Single._();
  static Single? _single;
  static Single share() => _single ??= Single._();
  factory Single() => Single.share();
  static Single get instance => Single.share();
}

@freezed
class Animal with _$Animal {
  const factory Animal.Initialize() = _Initialize;
  factory Animal.fromJson(Map<String, Object?> json) => _$AnimalFromJson(json);
}
