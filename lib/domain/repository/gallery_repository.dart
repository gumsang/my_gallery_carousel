import 'package:image_picker/image_picker.dart';
import 'package:my_gallery_carousel/domain/model/picture.dart';

abstract class GalleryRepository {
  void addList(List<XFile> add);
  void clearList();
  List<Picture> getList();
}
