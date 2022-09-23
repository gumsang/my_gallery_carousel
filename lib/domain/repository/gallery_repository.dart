import 'package:my_gallery_carousel/domain/model/picture.dart';

abstract class GalleryRepository {
  void addList(List<Picture> add);
  void clearList();
}
