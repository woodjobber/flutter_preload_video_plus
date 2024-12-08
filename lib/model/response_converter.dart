import 'package:flutter_preload_videos/model/person.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class PersonResponseConverter
    implements JsonConverter<MyResponse, Map<String, dynamic>> {
  const PersonResponseConverter();
  @override
  MyResponse fromJson(Map<String, dynamic> json) {
    // type data was already set (e.g. because we serialized it ourselves)
    if (json['runtimeType'] != null) {
      return MyResponse.fromJson(json);
    }
    String runtimeType = json['runtimeType'];
    // 你需要找到一些条件去知道这是什么类型。例如：检查 JSON 中的某些字段
    if (runtimeType == 'data') {
      return MyResponseData.fromJson(json);
    } else if (runtimeType == 'special') {
      return MyResponseSpecial.fromJson(json);
    } else if (runtimeType == 'error') {
      return MyResponseError.fromJson(json);
    } else {
      throw Exception(
          'Could not determine the constructor for mapping from JSON');
    }
  }

  @override
  Map<String, dynamic> toJson(MyResponse object) {
    return object.toJson();
  }
}
