import 'dart:convert';
import 'package:wu_testing/album.dart';

Future<Album> fetchAlbum(final client) async {
  final response = await client.get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));

  if (response.statusCode == 200) {
    return Album.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to load album');
  }
}
