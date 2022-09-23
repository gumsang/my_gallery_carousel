import 'package:freezed_annotation/freezed_annotation.dart';

import '../domain/model/picture.dart';

part 'gallery_state.freezed.dart';

@freezed
class GalleryState with _$GalleryState {
  const factory GalleryState({
    required List<Picture> pictureList,
    required int index,
    required int length,
  }) = _GalleryState;
}
