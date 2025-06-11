import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_clean_architecture/domain/entities/unsplash_image.dart';

part 'search_ui_state.freezed.dart';

/// 화면에서 보여줘야 하는 상태를 한 객체로 통합 관리합니다.
/// - images: 검색 결과 이미지 목록
/// - query: 현재 검색어
/// - isLoading: 로딩 중인지 여부
/// - hasReachedEnd: 더 불러올 데이터가 없는지 여부
/// - errorMessage: 에러 발생 시 메시지
/// - selectedImage: 선택된 이미지 (추후 상세 정보용 등 확장 가능)
@freezed
class SearchUiState with _$SearchUiState {
  const factory SearchUiState({
    @Default([]) List<UnsplashImage> images,
    @Default('') String query,
    @Default(false) bool isLoading,
    @Default(false) bool hasReachedEnd,
    String? errorMessage,
    UnsplashImage? selectedImage,
  }) = _SearchUiState;
}
