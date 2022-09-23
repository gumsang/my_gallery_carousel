import 'package:my_gallery_carousel/domain/use_case/add_picture_use_case.dart';
import 'package:my_gallery_carousel/domain/use_case/clear_list_use_case.dart';

import 'load_pictures_use_case.dart';

class UseCases {
  final AddPictureUseCase addPictureUseCase;
  final ClearListUseCase clearListUseCase;
  final LoadPicturesUseCase loadPicturesUseCase;

  UseCases({
    required this.addPictureUseCase,
    required this.clearListUseCase,
    required this.loadPicturesUseCase,
  });
}
