import 'package:riverpod_clean_architecture/data/model/unsplash_image_dto.dart';
import 'package:riverpod_clean_architecture/domain/entities/unsplash_image.dart';

/// DTO → 도메인 모델로 변환하는 확장 함수입니다.
/// 앱 내부에서는 DTO가 아닌 UnsplashImage만 사용합니다.
extension UnsplashImageMapper on UnsplashImageDto {
  UnsplashImage toDomain() {
    return UnsplashImage(
      id: id,
      thumbnailUrl: urls.small,
      fullImageUrl: urls.full,
      description: altDescription ?? 'No description',
    );
  }
}