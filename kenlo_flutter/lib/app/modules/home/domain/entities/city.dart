import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class City extends Equatable {
  final int id;
  final String city;
  final String lat;
  final String long;

  const City({
    required this.id,
    required this.city,
    required this.lat,
    required this.long,
  });

  City copyWith({
    int? id,
    String? city,
    String? lat,
    String? long,
  }) =>
      City(
        id: id ?? this.id,
        city: city ?? this.city,
        lat: lat ?? this.lat,
        long: long ?? this.long,
      );

  @override
  List<Object?> get props => [
        id,
        city,
        lat,
        long,
      ];
}
