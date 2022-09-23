import 'dart:async';
import 'dart:io';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:my_gallery_carousel/presentation/gallery_event.dart';
import 'package:my_gallery_carousel/presentation/gallery_view_model.dart';
import 'package:provider/provider.dart';

class GalleryScreen extends StatefulWidget {
  const GalleryScreen({super.key});

  @override
  State<GalleryScreen> createState() => _GalleryScreenState();
}

class _GalleryScreenState extends State<GalleryScreen> {
  Timer? timer;

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<GalleryViewModel>();
    final state = viewModel.state;
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              viewModel.onEvent(const GalleryEvent.addPicture());
            },
            icon: const Icon(Icons.add_a_photo),
          ),
          IconButton(
            onPressed: () {
              viewModel.onEvent(const GalleryEvent.clearAndAddPicture());
            },
            icon: const Icon(Icons.add_box_outlined),
          )
        ],
      ),
      body: SafeArea(
        child: viewModel.state.pictureList.isEmpty
            ? const Center(
                child: Text("No image"),
              )
            : Column(
                children: <Widget>[
                  CarouselSlider(
                    options: CarouselOptions(
                      initialPage: 0,
                      autoPlay: true,
                      autoPlayInterval: const Duration(seconds: 3),
                      autoPlayAnimationDuration:
                          const Duration(milliseconds: 800),
                      viewportFraction: 0.85,
                      height: MediaQuery.of(context).size.height - 200,
                      autoPlayCurve: Curves.fastOutSlowIn,
                    ),
                    items: viewModel.state.pictureList.map(
                      (picture) {
                        return Builder(
                          builder: (BuildContext context) {
                            return Container(
                              width: MediaQuery.of(context).size.width,
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 5.0),
                              child: Image.file(
                                File(picture.file.path),
                                fit: BoxFit.cover,
                              ),
                            );
                          },
                        );
                      },
                    ).toList(),
                  ),
                ],
              ),
      ),
    );
  }
}
