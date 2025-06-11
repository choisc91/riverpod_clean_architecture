import '../entities/unsplash_image.dart';

/// 검색 기능을 위한 Repository 인터페이스입니다.
/// 실제 구현체는 data layer에 있습니다.
abstract class ImageRepository {
  Future<List<UnsplashImage>> searchImages(String query, {int page = 1});
}