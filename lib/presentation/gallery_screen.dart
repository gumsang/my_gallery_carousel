import 'dart:io';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_gallery_carousel/presentation/gallery_view_model.dart';
import 'package:provider/provider.dart';

import 'gallery_event.dart';

class GalleryScreen extends StatefulWidget {
  const GalleryScreen({super.key});

  @override
  State<GalleryScreen> createState() => _GalleryScreenState();
}

class _GalleryScreenState extends State<GalleryScreen> {
  double appBarHeight = 0.0;

  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<GalleryViewModel>();
    final state = viewModel.state;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            AnimatedContainer(
              height: state.pictureList.isEmpty ? 60 : appBarHeight,
              duration: const Duration(milliseconds: 300),
              child: AppBar(
                actions: [
                  IconButton(
                    onPressed: () {
                      viewModel.onEvent(const GalleryEvent.addPicture());
                      _hideAppBar();
                    },
                    icon: const Icon(Icons.create_new_folder),
                  ),
                  IconButton(
                    onPressed: () {
                      viewModel
                          .onEvent(const GalleryEvent.clearAndAddPicture());
                      _hideAppBar();
                    },
                    icon: const Icon(Icons.add),
                  ),
                  IconButton(
                    onPressed: () {
                      viewModel.onEvent(const GalleryEvent.clearList());
                      _showAppBar();
                    },
                    icon: const Icon(Icons.clear),
                  )
                ],
              ),
            ),
            state.pictureList.isEmpty
                ? const Center(child: Text("No image"))
                : Column(
                    children: <Widget>[
                      CarouselSlider(
                        options: CarouselOptions(
                          initialPage: 0,
                          autoPlay: true,
                          autoPlayInterval: const Duration(seconds: 3),
                          autoPlayAnimationDuration:
                              const Duration(milliseconds: 800),
                          viewportFraction: 1,
                          height:
                              MediaQuery.of(context).size.height - appBarHeight,
                          autoPlayCurve: Curves.fastOutSlowIn,
                        ),
                        items: viewModel.state.pictureList.map(
                          (picture) {
                            return Builder(
                              builder: (BuildContext context) {
                                return AnimatedContainer(
                                  duration: const Duration(milliseconds: 290),
                                  child: GestureDetector(
                                    onTap: () => _showAppBar(),
                                    child: Image.file(
                                      File(picture.file.path),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                        ).toList(),
                      ),
                    ],
                  ),
          ],
        ),
      ),
    );
  }

  void _hideAppBar() {
    setState(() {
      appBarHeight = 0;
    });
  }

  void _showAppBar() async {
    setState(() {
      appBarHeight = 60;
    });
    await Future.delayed(const Duration(seconds: 3));
    _hideAppBar();
  }
}
