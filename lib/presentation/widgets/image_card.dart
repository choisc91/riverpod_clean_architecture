
import 'package:flutter/material.dart';
import 'package:riverpod_clean_architecture/domain/entities/unsplash_image.dart';
import 'package:riverpod_clean_architecture/presentation/pages/full_image_page.dart';

/// 개별 이미지를 카드 형식으로 보여주는 위젯입니다.
/// 클릭 시 전체 화면 보기로 전환됩니다.
class ImageCard extends StatelessWidget {
  final UnsplashImage image;

  const ImageCard({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => FullImagePage(imageUrl: image.fullImageUrl, tag: image.id),
        ),
      ),
      child: Hero(
        tag: image.id,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.grey[200],
            boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 5)],
          ),
          clipBehavior: Clip.hardEdge,
          child: Image.network(image.thumbnailUrl, fit: BoxFit.cover),
        ),
      ),
    );
  }
}