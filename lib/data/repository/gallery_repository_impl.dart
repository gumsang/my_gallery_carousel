import 'package:my_gallery_carousel/data/data_source/gallery_db_helper.dart';
import 'package:my_gallery_carousel/domain/model/picture.dart';
import 'package:my_gallery_carousel/domain/repository/gallery_repository.dart';

class GalleryRepositoryImpl implements GalleryRepository {
  final GalleryDbHelper db;

  GalleryRepositoryImpl(this.db);

  @override
  Future<void> addList(List<Picture> add) async {
    db.addList(add);
  }

  @override
  void clearList() {
    db.clearList();
  }
}
