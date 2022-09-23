import 'package:flutter/material.dart';
import 'package:my_gallery_carousel/presentation/gallery_screen.dart';
import 'package:provider/provider.dart';

import 'di/provider_setup.dart';

void main() {
  final providers = getProviders();
  runApp(
    MultiProvider(
      providers: [providers],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const GalleryScreen(),
    );
  }
}
