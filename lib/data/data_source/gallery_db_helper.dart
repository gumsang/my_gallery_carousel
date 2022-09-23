import 'package:image_picker/image_picker.dart';
import 'package:my_gallery_carousel/domain/model/picture.dart';

class GalleryDbHelper {
  final List<Picture> _list;

  GalleryDbHelper(this._list);

  Future<List<Picture>> getPictureList() async {
    return _list;
  }

  void addList(List<XFile> add) {
    _list.addAll(add.map((e) => Picture(file: e)).toList());
  }

  void clearList() {
    _list.clear();
  }

  List<Picture> getList() {
    return _list;
  }
}
