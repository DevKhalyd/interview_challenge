import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/album_provider.dart';
import '../widgets/album_item.dart';


class AlbumsScreen extends StatelessWidget {
  const AlbumsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Jack Johnson Albums',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          const Icon(
            Icons.favorite,
            color: Colors.pink,
          ),
          const SizedBox(width: 10),
          Consumer<AlbumProvider>(builder: (_, v, __) {
            return Center(
              child: Text(
                v.counterFav.toString(),
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            );
          }),
          const SizedBox(width: 20),
        ],
      ),
      body: Consumer<AlbumProvider>(
        builder: (_, v, __) {
          return GridView.count(
            crossAxisCount: 4,
            children: v.albums.map((album) {
              return AlbumItem(
                album: album,
                onPressed: () => v.favoriteAlbum(album),
              );
            }).toList(),
          );
        },
      ),
    );
  }
}
