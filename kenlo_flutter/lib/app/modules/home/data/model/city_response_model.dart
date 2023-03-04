import 'package:json_annotation/json_annotation.dart';

import 'package:kenlo_flutter/app/modules/home/data/model/city_model.dart';

part 'city_response_model.g.dart';

@JsonSerializable()
class CityResponseModel {
  @JsonKey(name: 'total')
  final int? total;
  @JsonKey(name: 'items')
  final List<CityModel>? items;

  CityResponseModel({
    this.total,
    this.items,
  });

  factory CityResponseModel.fromJson(Map<String, dynamic> json) =>
      _$CityResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$CityResponseModelToJson(this);
}
