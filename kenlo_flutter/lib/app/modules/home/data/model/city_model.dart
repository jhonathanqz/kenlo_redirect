import 'package:json_annotation/json_annotation.dart';

part 'city_model.g.dart';

@JsonSerializable()
class CityModel {
  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'cidade')
  final String? city;
  @JsonKey(name: 'latitude')
  final String? lat;
  @JsonKey(name: 'longitude')
  final String? long;

  CityModel({
    this.id,
    this.city,
    this.lat,
    this.long,
  });

  factory CityModel.fromJson(Map<String, dynamic> json) =>
      _$CityModelFromJson(json);

  Map<String, dynamic> toJson() => _$CityModelToJson(this);
}
