import 'package:dio/dio.dart';
import 'package:riverpod_clean_architecture/data/model/unsplash_image_dto.dart';
import 'package:riverpod_clean_architecture/data/model/unsplash_image_mapper.dart';
import 'package:riverpod_clean_architecture/domain/entities/unsplash_image.dart';
import 'package:riverpod_clean_architecture/domain/repositories/image_repository.dart';

/// 실제 API 요청을 수행하는 클래스입니다.
/// 'Repository Pattern'에 따라 데이터 소스의 추상화를 담당합니다.
class ImageRepositoryImpl implements ImageRepository {
  final Dio dio;
  final String apiKey;

  ImageRepositoryImpl({required this.dio, required this.apiKey});

  @override
  Future<List<UnsplashImage>> searchImages(String query, {int page = 1}) async {
    // Dio는 HTTP 통신을 도와주는 라이브러리입니다
    final response = await dio.get(
      'https://api.unsplash.com/search/photos',
      queryParameters: {
        'query': query,
        'page': page,
        'per_page': 20, // optional
      },
      options: Options(
        // API 키를 인증 헤더에 포함
        headers: {'Authorization': 'Client-ID $apiKey'},
      ),
    );

    // API 응답 → DTO → 도메인 모델로 변환
    final results = (response.data['results'] as List)
        .map((json) => UnsplashImageDto.fromJson(json).toDomain())
        .toList();

    return results;
  }
}
