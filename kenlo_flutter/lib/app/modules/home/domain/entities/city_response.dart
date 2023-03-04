import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import 'package:kenlo_flutter/app/modules/home/domain/entities/city.dart';

@immutable
class CityResponse extends Equatable {
  final int total;
  final List<City> cities;

  const CityResponse({
    this.total = 0,
    this.cities = const [],
  });

  CityResponse copyWith({
    int? total,
    List<City>? cities,
  }) =>
      CityResponse(
        total: total ?? this.total,
        cities: cities ?? this.cities,
      );

  @override
  List<Object?> get props => [
        total,
        cities,
      ];
}
