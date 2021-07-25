import 'dart:convert';

import 'package:http/http.dart';
import 'package:photo_finder/src/models/index.dart';

class PhotosApi {
  const PhotosApi({required String apiUrl, required String apiKey, required Client client})
      : _apiUrl = apiUrl,
        _apiKey = apiKey,
        _client = client;

  final String _apiUrl;
  final String _apiKey;
  final Client _client;

  Future<List<Photo>> getPhotos(int page, String query) async {
    final Uri uri = Uri.parse('$_apiUrl/search/photos?client_id=$_apiKey&page=$page&query=$query');
    final Response response = await _client.get(uri);

    if (response.statusCode >= 300) {
      throw StateError(response.body);
    }

    final Map<String, dynamic> body = jsonDecode(response.body) as Map<String, dynamic>;
    final List<dynamic> photos = body['results'] as List<dynamic>;

    return photos //
        .map((dynamic json) => Photo.fromJson(json))
        .toList();
  }
}
