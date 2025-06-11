import 'package:freezed_annotation/freezed_annotation.dart';

part 'unsplash_image_dto.freezed.dart';

part 'unsplash_image_dto.g.dart';

/// Unsplash API의 JSON 응답을 받을 때 사용하는 데이터 모델입니다.
/// 'freezed'는 불변 객체와 JSON 변환 코드를 자동 생성해주는 도구입니다.
@freezed
class UnsplashImageDto with _$UnsplashImageDto {
  const factory UnsplashImageDto({
    required String id,

    /// URL 정보 (썸네일, 전체 이미지 등)를 담고 있는 내부 객체입니다
    required UrlsDto urls,

    /// 이미지 설명 (nullable - 없을 수도 있음)
    required String? altDescription,
  }) = _UnsplashImageDto;

  factory UnsplashImageDto.fromJson(Map<String, dynamic> json) =>
      _$UnsplashImageDtoFromJson(json);
}

/// Unsplash API 내 URL 데이터 전용 모델입니다.
@freezed
class UrlsDto with _$UrlsDto {
  const factory UrlsDto({
    required String small,  // 썸네일
    required String regular,
    required String full,   // 원본 이미지
  }) = _UrlsDto;

  factory UrlsDto.fromJson(Map<String, dynamic> json) =>
      _$UrlsDtoFromJson(json);
}
