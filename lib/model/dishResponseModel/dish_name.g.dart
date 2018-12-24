// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dish_name.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DishName _$dishNameFromJson(Map<String, dynamic> json) {
  return new DishName(
      json['resultcode'] as String,
      json['reason'] as String,
      json['result'] == null
          ? null
          : new Result.fromJson(json['result'] as Map<String, dynamic>),
      json['error_code'] as int);
}

abstract class _$dishNameSerializerMixin {
  String get resultcode;
  String get reason;
  Result get result;
  int get errorCode;
  Map<String, dynamic> toJson() => <String, dynamic>{
        'resultcode': resultcode,
        'reason': reason,
        'result': result,
        'error_code': errorCode
      };
}

Result _$ResultFromJson(Map<String, dynamic> json) {
  return new Result(
      (json['data'] as List)
          ?.map((e) =>
              e == null ? null : new Data.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      json['totalNum'] as String,
      json['pn'] as int,
      json['rn'] as int);
}

abstract class _$ResultSerializerMixin {
  List<Data> get data;
  String get totalNum;
  int get pn;
  int get rn;
  Map<String, dynamic> toJson() =>
      <String, dynamic>{'data': data, 'totalNum': totalNum, 'pn': pn, 'rn': rn};
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return new Data(
      json['id'] as String,
      json['title'] as String,
      json['tags'] as String,
      json['imtro'] as String,
      json['ingredients'] as String,
      json['burden'] as String,
      (json['albums'] as List)?.map((e) => e as String)?.toList(),
      (json['steps'] as List)
          ?.map((e) =>
              e == null ? null : new Steps.fromJson(e as Map<String, dynamic>))
          ?.toList());
}

abstract class _$DataSerializerMixin {
  String get id;
  String get title;
  String get tags;
  String get imtro;
  String get ingredients;
  String get burden;
  List<String> get albums;
  List<Steps> get steps;
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'title': title,
        'tags': tags,
        'imtro': imtro,
        'ingredients': ingredients,
        'burden': burden,
        'albums': albums,
        'steps': steps
      };
}

Steps _$StepsFromJson(Map<String, dynamic> json) {
  return new Steps(json['img'] as String, json['step'] as String);
}

abstract class _$StepsSerializerMixin {
  String get img;
  String get step;
  Map<String, dynamic> toJson() => <String, dynamic>{'img': img, 'step': step};
}
