import 'package:image_picker/image_picker.dart';
import 'package:my_gallery_carousel/data/data_source/gallery_db_helper.dart';
import 'package:my_gallery_carousel/domain/model/picture.dart';
import 'package:my_gallery_carousel/domain/repository/gallery_repository.dart';

class GalleryRepositoryImpl implements GalleryRepository {
  final GalleryDbHelper db;

  GalleryRepositoryImpl(this.db);

  @override
  Future<void> addList(List<XFile> add) async {
    db.addList(add);
  }

  @override
  void clearList() {
    db.clearList();
  }

  @override
  List<Picture> getList() {
    return db.getList();
  }
}
