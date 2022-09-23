import 'package:freezed_annotation/freezed_annotation.dart';

part 'gallery_event.freezed.dart';

@freezed
class GalleryEvent<T> with _$GalleryEvent<T> {
  const factory GalleryEvent.loadList() = LoadList;
  const factory GalleryEvent.addPicture() = AddPicture;
  const factory GalleryEvent.clearAndAddPicture() = ClearAndAddPicture;
  const factory GalleryEvent.clearList() = ClearList;
  // const factory GalleryEvent.goForward() = GoForward;
  // const factory GalleryEvent.goBack() = GoBack;
}
