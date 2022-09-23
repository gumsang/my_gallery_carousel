import 'package:my_gallery_carousel/data/data_source/gallery_db_helper.dart';
import 'package:my_gallery_carousel/data/repository/gallery_repository_impl.dart';
import 'package:my_gallery_carousel/domain/repository/gallery_repository.dart';
import 'package:my_gallery_carousel/domain/use_case/use_cases.dart';
import 'package:my_gallery_carousel/presentation/gallery_view_model.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import '../domain/use_case/add_picture_use_case.dart';
import '../domain/use_case/clear_list_use_case.dart';
import '../domain/use_case/load_pictures_use_case.dart';

SingleChildWidget getProviders() {
  GalleryDbHelper galleryDbHelper = GalleryDbHelper([]);
  GalleryRepository repository = GalleryRepositoryImpl(galleryDbHelper);
  UseCases useCases = UseCases(
    addPictureUseCase: AddPictureUseCase(repository),
    clearListUseCase: ClearListUseCase(repository),
    loadPicturesUseCase: LoadPicturesUseCase(repository),
  );
  GalleryViewModel galleryViewModel = GalleryViewModel(useCases);

  return ChangeNotifierProvider(create: (context) => galleryViewModel);
}
