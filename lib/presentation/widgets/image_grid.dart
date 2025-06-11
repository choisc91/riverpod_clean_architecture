import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:riverpod_clean_architecture/presentation/widgets/image_card.dart';
import '../../domain/entities/unsplash_image.dart';

/// 이미지들을 그리드 형태로 보여주는 위젯입니다.
/// Stack을 사용해 로딩 표시나 '끝' 메시지를 하단에 겹쳐서 보여줍니다.
class ImageGrid extends StatelessWidget {
  final List<UnsplashImage> images;
  final ScrollController scrollController;
  final bool isLoading;
  final bool hasReachedEnd;

  const ImageGrid({
    super.key,
    required this.images,
    required this.scrollController,
    required this.isLoading,
    required this.hasReachedEnd,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GridView.builder(
          controller: scrollController,
          padding: const EdgeInsets.all(16),
          itemCount: images.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,    
            childAspectRatio: 0.7,
          ),
          itemBuilder: (context, index) => ImageCard(image: images[index]),
        ),
        if (isLoading) _buildLoadingIndicator(),
        if (!isLoading && hasReachedEnd) _buildEndMessage(),
      ],
    );
  }

  /// 스크롤 하단에 고정된 로딩 인디케이터
  Widget _buildLoadingIndicator() {
    return const Positioned(
      bottom: 24,
      left: 0,
      right: 0,
      child: Center(child: SpinKitThreeBounce(color: Colors.white, size: 32)),
    );
  }

  /// 더 이상 불러올 이미지가 없을 때 표시
  Widget _buildEndMessage() {
    return const Positioned(
      bottom: 24,
      left: 0,
      right: 0,
      child: Center(
        child: Text('No more results', style: TextStyle(color: Colors.grey)),
      ),
    );
  }
}
