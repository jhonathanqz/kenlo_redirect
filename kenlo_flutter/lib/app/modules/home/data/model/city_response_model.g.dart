// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CityResponseModel _$CityResponseModelFromJson(Map<String, dynamic> json) =>
    CityResponseModel(
      total: json['total'] as int?,
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => CityModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CityResponseModelToJson(CityResponseModel instance) =>
    <String, dynamic>{
      'total': instance.total,
      'items': instance.items,
    };
