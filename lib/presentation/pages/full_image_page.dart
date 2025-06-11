import 'package:flutter/material.dart';

/// 이미지 전체 화면 보기 페이지입니다.
/// 클릭된 이미지가 Hero 애니메이션을 통해 부드럽게 확대됩니다.
class FullImagePage extends StatelessWidget {
  final String imageUrl;
  final String tag;

  const FullImagePage({super.key, required this.imageUrl, required this.tag});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Center(
            child: Hero(
              tag: tag, // Hero 태그가 동일한 두 위젯 사이에 애니메이션을 적용합니다.
              child: Image.network(imageUrl, fit: BoxFit.contain),
            ),
          ),
          Positioned(
            top: 40,
            left: 16,
            child: IconButton(
              icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
              onPressed: () => Navigator.pop(context),
            ),
          ),
        ],
      ),
    );
  }
}
