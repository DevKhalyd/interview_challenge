import 'package:flutter/material.dart';

import '../../domain/models/data_model.dart';

class AlbumItem extends StatelessWidget {
  const AlbumItem({
    Key? key,
    required this.album,
    this.onPressed,
  }) : super(key: key);

  final Album album;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final urlImage = album.artworkUrl100;

    return Column(
      children: [
        if (urlImage != null)
          SizedBox(
            height: 150,
            child: Image.network(urlImage),
          ),
        Text(
          '${album.collectionName}',
        ),
        Text('${album.collectionPrice}'),
        Text('${album.releaseDate}'),
        IconButton(
          onPressed: onPressed,
          icon: Icon(
            album.isFavorite ? Icons.favorite : Icons.favorite_border,
            color: album.isFavorite ? Colors.pink : Colors.black,
          ),
        ),
      ],
    );
  }
}
