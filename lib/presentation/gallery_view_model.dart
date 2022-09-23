import 'dart:async';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:my_gallery_carousel/presentation/gallery_event.dart';
import 'package:my_gallery_carousel/presentation/gallery_state.dart';

import '../domain/model/picture.dart';
import '../domain/use_case/use_cases.dart';

class GalleryViewModel with ChangeNotifier {
  final UseCases useCases;

  GalleryState _state = const GalleryState(
    pictureList: [],
    index: 0,
    length: 0,
  );

  GalleryState get state => _state;

  GalleryViewModel(this.useCases);

  void onEvent(GalleryEvent event) {
    event.when(
      addPicture: _addPicture,
      loadList: _loadList,
      clearList: _clearList,
      clearAndAddPicture: _clearAndAddPicture,
    );
  }

  Future<void> _loadList() async {
    List<Picture> pictures = await useCases.loadPicturesUseCase();
    _state = state.copyWith(pictureList: pictures);
    notifyListeners();
  }

  Future<void> _addPicture() async {
    List<XFile>? image = await ImagePicker().pickMultiImage();
    if (image != null) {
      await useCases.addPictureUseCase(image);
      _state = state.copyWith(index: 0, length: image.length);
    }
    await _loadList();
  }

  Future<void> _clearAndAddPicture() async {
    List<XFile>? image = await ImagePicker().pickMultiImage();
    if (image != null) {
      _clearList();
      await useCases.addPictureUseCase(image);
      _state = state.copyWith(index: 0, length: image.length);
    }
    await _loadList();
  }

  Future<void> _clearList() async {
    useCases.clearListUseCase();
    _state = state.copyWith(pictureList: []);
    await _loadList();
  }

  // void _goForward() {
  //   if (_state.index == _state.length - 1) {
  //     _state = state.copyWith(index: _state.index + 1);
  //   } else {
  //     _state = state.copyWith(index: 0);
  //   }
  //   notifyListeners();
  // }

  // void _goBack() {
  //   if (_state.index == 0) {
  //     _state = state.copyWith(index: _state.length - 1);
  //   } else {
  //     _state = state.copyWith(index: _state.index - 1);
  //   }
  //   notifyListeners();
  // }
}
