import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:riverpod_clean_architecture/presentation/viewmodels/search_viewmodels.dart';
import 'package:riverpod_clean_architecture/presentation/widgets/image_grid.dart';
import 'package:riverpod_clean_architecture/presentation/widgets/search_field.dart';

/// 앱의 메인 화면입니다.
/// - 검색창 입력
/// - 검색 결과 그리드 표시
/// - 스크롤 이벤트를 통해 추가 데이터 로딩
/// - 에러 메시지, 로딩 상태 등을 함께 표시합니다.
class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  final TextEditingController _controller = TextEditingController();
  final _scrollController = ScrollController();

  /// 사용자가 검색 버튼을 눌렀을 때 ViewModel에 검색 요청
  void _onSearch() {
    final query = _controller.text.trim();
    if (query.isNotEmpty) {
      ref.read(searchViewModelProvider.notifier).search(query);
    }
  }

  /// 검색 입력과 상태 초기화
  void _onClear() {
    _controller.clear();
    ref.read(searchViewModelProvider.notifier).clear();
  }

  @override
  void initState() {
    super.initState();
    // 스크롤이 바닥 근처에 도달하면 다음 페이지 요청
    _scrollController.addListener(() {
      final vm = ref.read(searchViewModelProvider);
      if (_scrollController.position.pixels >=
              _scrollController.position.maxScrollExtent - 300 &&
          !vm.isLoading &&
          !vm.hasReachedEnd) {
        ref.read(searchViewModelProvider.notifier).loadMore();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(searchViewModelProvider); // 상태 구독

    return Scaffold(
      backgroundColor: const Color(0xFFF4F4F4),
      body: SafeArea(
        child: Column(
          children: [
            SearchField(
              controller: _controller,
              onSearch: _onSearch,
              onClear: _onClear,
            ),
            if (state.errorMessage != null)
              Padding(
                padding: const EdgeInsets.all(12),
                child: Text(
                  state.errorMessage!,
                  style: const TextStyle(color: Colors.red),
                ),
              ),
            Expanded(
              child: state.images.isEmpty && state.isLoading
                  ? const Center(
                      child: SpinKitThreeBounce(
                        color: Colors.black,
                        size: 50.0,
                      ),
                    )
                  : ImageGrid(
                      images: state.images,
                      scrollController: _scrollController,
                      isLoading: state.isLoading,
                      hasReachedEnd: state.hasReachedEnd,
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
