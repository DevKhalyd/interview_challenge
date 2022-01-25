import '../../data/data.dart';

/// File that contains the data for the app and the method to get the albums

/// Get all the albums in the data.dart file
List<Album> getDataSource() {
  final albums = dataFromJson(jsonResponse).results;

  // The first one is the artirst data
  albums.removeAt(0);
  return albums;
}

/// Get one album for test
Album getOneAlbum() {
  final albums = dataFromJson(jsonResponse).results;
  return albums[2];
}

Data dataFromJson(Map<String, Object> map) => Data.fromJson(map);

class Data {
  const Data({
    required this.resultCount,
    required this.results,
  });

  final int resultCount;
  final List<Album> results;

  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
      resultCount: json["resultCount"],
      results: List<Album>.from(json["results"].map((x) => Album.fromJson(x))),
    );
  }
}

class Album {
  Album({
    this.artistType,
    this.artistName,
    this.artistLinkUrl,
    this.artistId,
    this.amgArtistId,
    this.primaryGenreName,
    this.primaryGenreId,
    this.collectionId,
    this.collectionName,
    this.collectionCensoredName,
    this.artistViewUrl,
    this.collectionViewUrl,
    this.artworkUrl60,
    this.artworkUrl100,
    this.collectionPrice,
    this.releaseDate,
    this.isFavorite = false,
  });

  final String? artistType;
  final String? artistName;
  final String? artistLinkUrl;
  final int? artistId;
  final int? amgArtistId;
  final String? primaryGenreName;
  final int? primaryGenreId;
  final int? collectionId;
  final String? collectionName;
  final String? collectionCensoredName;
  final String? artistViewUrl;
  final String? collectionViewUrl;
  final String? artworkUrl60;
  final String? artworkUrl100;
  final double? collectionPrice;
  final String? releaseDate;
  bool isFavorite;

  factory Album.fromJson(Map<String, dynamic> json) => Album(
        artistType: json["artistType"] ?? '',
        artistName: json["artistName"],
        artistLinkUrl: json["artistLinkUrl"],
        artistId: json["artistId"],
        amgArtistId: json["amgArtistId"],
        primaryGenreName: json["primaryGenreName"],
        primaryGenreId: json["primaryGenreId"],
        collectionId: json["collectionId"],
        collectionName: json["collectionName"],
        collectionCensoredName: json["collectionCensoredName"],
        artistViewUrl: json["artistViewUrl"],
        collectionViewUrl: json["collectionViewUrl"],
        artworkUrl60: json["artworkUrl60"],
        artworkUrl100: json["artworkUrl100"],
        collectionPrice: json["collectionPrice"],
        releaseDate: json["releaseDate"],
      );

  @override
  String toString() {
    final msg =
        "$artistName - $collectionName - $artworkUrl100 - $collectionPrice - $releaseDate";
    return msg;
  }
}
