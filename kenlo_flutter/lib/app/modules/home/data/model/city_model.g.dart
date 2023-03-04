// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CityModel _$CityModelFromJson(Map<String, dynamic> json) => CityModel(
      id: json['id'] as int?,
      city: json['cidade'] as String?,
      lat: json['latitude'] as String?,
      long: json['longitude'] as String?,
    );

Map<String, dynamic> _$CityModelToJson(CityModel instance) => <String, dynamic>{
      'id': instance.id,
      'cidade': instance.city,
      'latitude': instance.lat,
      'longitude': instance.long,
    };
