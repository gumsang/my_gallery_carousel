import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';

part 'picture.freezed.dart';

@freezed
class Picture with _$Picture {
  const factory Picture({
    required XFile file,
  }) = _Picture;
}
