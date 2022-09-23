import 'package:my_gallery_carousel/domain/model/picture.dart';

class GalleryDbHelper {
  List<Picture> list;

  GalleryDbHelper(this.list);

  Future<List<Picture>> getPictureList() async {
    return list;
  }

  void addList(List<Picture> add) {
    list.addAll(add);
  }

  void clearList() {
    list.clear();
  }
}
