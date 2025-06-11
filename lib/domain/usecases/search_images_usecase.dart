import '../entities/unsplash_image.dart';
import '../repositories/image_repository.dart';

class SearchImagesUseCase {
  final ImageRepository repository;

  SearchImagesUseCase(this.repository);

  Future<List<UnsplashImage>> call(String query, {int page = 1}) {
    return repository.searchImages(query, page: page);
  }
}