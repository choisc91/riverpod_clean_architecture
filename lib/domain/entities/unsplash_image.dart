
/// 앱 내부에서 사용하는 도메인 모델입니다.
/// API와 직접 연결되지 않고, UI가 주로 사용하는 데이터 구조입니다.
class UnsplashImage {
  final String id;
  final String thumbnailUrl;
  final String fullImageUrl;
  final String description;

  const UnsplashImage({
    required this.id,
    required this.thumbnailUrl,
    required this.fullImageUrl,
    required this.description,
  });
}