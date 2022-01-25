import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'features/albums/presentation/provider/album_provider.dart';
import 'features/albums/presentation/screens/albums_screen.dart';

void main() => runApp(const FlutterChallenge());

class FlutterChallenge extends StatelessWidget {
  const FlutterChallenge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => AlbumProvider(),
      child: const MaterialApp(
        title: 'Jack Johnson Albums',
        debugShowCheckedModeBanner: false,
        home: AlbumsScreen(),
      ),
    );
  }
}
