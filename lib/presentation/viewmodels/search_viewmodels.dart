import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_clean_architecture/core/network/dio_provider.dart';
import 'package:riverpod_clean_architecture/domain/usecases/search_images_usecase.dart';
import 'package:riverpod_clean_architecture/presentation/viewmodels/search_ui_state.dart';

final searchViewModelProvider =
    NotifierProvider<SearchViewModel, SearchUiState>(SearchViewModel.new);

/// UI가 사용할 상태(SearchUiState)를 제어하는 ViewModel입니다.
/// 상태 변경, 로딩 처리, 페이지네이션 등 UI 로직을 이 클래스에 모읍니다.
class SearchViewModel extends Notifier<SearchUiState> {
  late final SearchImagesUseCase _useCase;

  @override
  SearchUiState build() {
    _useCase = ref.read(searchImagesUseCaseProvider);
    return const SearchUiState();
  }

  /// 첫 페이지 검색 수행
  Future<void> search(String query) async {
    state = state.copyWith(
      query: query,
      isLoading: true,
      errorMessage: null,
      images: [],
      hasReachedEnd: false,
    );

    try {
      final result = await _useCase(query, page: 1);
      state = state.copyWith(
        images: result,
        isLoading: false,
        hasReachedEnd: result.isEmpty,
      );
    } catch (e) {
      state = state.copyWith(isLoading: false, errorMessage: e.toString());
    }
  }

  /// 스크롤 하단에 도달하면 다음 페이지 불러오기
  Future<void> loadMore() async {
    if (state.isLoading || state.hasReachedEnd) return;

    final nextPage = (state.images.length ~/ 20) + 1;
    state = state.copyWith(isLoading: true);

    try {
      final result = await _useCase(state.query, page: nextPage);
      state = state.copyWith(
        images: [...state.images, ...result],
        isLoading: false,
        hasReachedEnd: result.isEmpty,
      );
    } catch (e) {
      state = state.copyWith(isLoading: false, errorMessage: e.toString());
    }
  }

  /// 검색 상태 초기화
  void clear() {
    state = const SearchUiState();
  }
}
