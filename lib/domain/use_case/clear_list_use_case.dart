import 'package:my_gallery_carousel/domain/repository/gallery_repository.dart';

class ClearListUseCase {
  final GalleryRepository repository;

  ClearListUseCase(this.repository);

  Future<void> call() async {
    repository.clearList();
  }
}
