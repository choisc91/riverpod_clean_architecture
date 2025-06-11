import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_clean_architecture/data/repositories/image_repository_impl.dart';
import 'package:riverpod_clean_architecture/domain/repositories/image_repository.dart';
import 'package:riverpod_clean_architecture/domain/usecases/search_images_usecase.dart';

/// 전역에서 HTTP 요청을 사용할 수 있도록 Dio 인스턴스를 Provider로 등록합니다.
final dioProvider = Provider<Dio>((ref) {
  return Dio();
});

final apiKeyProvider = Provider<String>((ref) {
  return 'HERE_UNSPLASH_ACCESS_KEY';
});

final imageRepositoryProvider = Provider<ImageRepository>((ref) {
  final dio = ref.watch(dioProvider);
  final apiKey = ref.watch(apiKeyProvider);
  return ImageRepositoryImpl(dio: dio, apiKey: apiKey);
});

final searchImagesUseCaseProvider = Provider<SearchImagesUseCase>((ref) {
  final repo = ref.watch(imageRepositoryProvider);
  return SearchImagesUseCase(repo);
});
