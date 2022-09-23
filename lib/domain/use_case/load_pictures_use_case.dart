import 'package:my_gallery_carousel/domain/model/picture.dart';
import 'package:my_gallery_carousel/domain/repository/gallery_repository.dart';

class LoadPicturesUseCase {
  final GalleryRepository repository;

  LoadPicturesUseCase(this.repository);

  Future<List<Picture>> call() async {
    return repository.getList();
  }
}
