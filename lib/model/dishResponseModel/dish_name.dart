import 'package:json_annotation/json_annotation.dart'; 
part 'dish_name.g.dart';


@JsonSerializable()
  class DishName extends Object with _$dishNameSerializerMixin{

  @JsonKey(name: 'resultcode')
  String resultcode;

  @JsonKey(name: 'reason')
  String reason;

  @JsonKey(name: 'result')
  Result result;

  @JsonKey(name: 'error_code')
  int errorCode;

  DishName(this.resultcode,this.reason,this.result,this.errorCode,);

  factory DishName.fromJson(Map<String, dynamic> srcJson) => _$dishNameFromJson(srcJson);

}

  
@JsonSerializable()
  class Result extends Object with _$ResultSerializerMixin{

  @JsonKey(name: 'data')
  List<Data> data;

  @JsonKey(name: 'totalNum')
  String totalNum;

  @JsonKey(name: 'pn')
  int pn;

  @JsonKey(name: 'rn')
  int rn;

  Result(this.data,this.totalNum,this.pn,this.rn,);

  factory Result.fromJson(Map<String, dynamic> srcJson) => _$ResultFromJson(srcJson);

}

  
@JsonSerializable()
  class Data extends Object with _$DataSerializerMixin{

  @JsonKey(name: 'id')
  String id;

  @JsonKey(name: 'title')
  String title;

  @JsonKey(name: 'tags')
  String tags;

  @JsonKey(name: 'imtro')
  String imtro;

  @JsonKey(name: 'ingredients')
  String ingredients;

  @JsonKey(name: 'burden')
  String burden;

  @JsonKey(name: 'albums')
  List<String> albums;

  @JsonKey(name: 'steps')
  List<Steps> steps;

  Data(this.id,this.title,this.tags,this.imtro,this.ingredients,this.burden,this.albums,this.steps,);

  factory Data.fromJson(Map<String, dynamic> srcJson) => _$DataFromJson(srcJson);

}

  
@JsonSerializable()
  class Steps extends Object with _$StepsSerializerMixin{

  @JsonKey(name: 'img')
  String img;

  @JsonKey(name: 'step')
  String step;

  Steps(this.img,this.step,);

  factory Steps.fromJson(Map<String, dynamic> srcJson) => _$StepsFromJson(srcJson);

}

  
