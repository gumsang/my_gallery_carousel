import 'package:image_picker/image_picker.dart';
import 'package:my_gallery_carousel/domain/repository/gallery_repository.dart';

class AddPictureUseCase {
  final GalleryRepository repository;

  AddPictureUseCase(this.repository);

  Future<void> call(List<XFile> add) async {
    repository.addList(add);
  }
}
