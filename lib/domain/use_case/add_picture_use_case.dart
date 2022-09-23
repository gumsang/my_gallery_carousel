import 'package:my_gallery_carousel/domain/model/picture.dart';
import 'package:my_gallery_carousel/domain/repository/gallery_repository.dart';

class AddPictureUseCase {
  final GalleryRepository repository;

  AddPictureUseCase(this.repository);

  Future<void> call(List<Picture> add) async {
    repository.addList(add);
  }
}
