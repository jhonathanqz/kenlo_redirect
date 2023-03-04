import 'package:kenlo_flutter/app/modules/home/domain/entities/city_response.dart';
import 'package:kenlo_flutter/app/modules/home/domain/repositories/kenlo_repository.dart';

class GetCitiesUseCase {
  final KenloRepository kenloRepository;
  GetCitiesUseCase({
    required this.kenloRepository,
  });

  Future<CityResponse> call() async {
    try {
      return await kenloRepository.getCities();
    } catch (e) {
      rethrow;
    }
  }
}
