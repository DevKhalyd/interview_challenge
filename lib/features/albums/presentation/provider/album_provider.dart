import 'package:flutter/cupertino.dart';

import '../../domain/models/data_model.dart';

class AlbumProvider extends ChangeNotifier {
  final _albums = getDataSource();

  List<Album> get albums => _albums;

  int _counterFav = 0;

  int get counterFav => _counterFav;

  favoriteAlbum(Album album) {
    final indexToUpdate =
        _albums.indexWhere((e) => e.collectionId == album.collectionId);

    if (indexToUpdate > -1) {
      final newValue = !_albums[indexToUpdate].isFavorite;
      _albums[indexToUpdate].isFavorite = newValue;
      if (newValue) {
        _counterFav++;
      } else {
        _counterFav--;
      }
      notifyListeners();
    }
  }
}
