import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:http/http.dart';
import 'package:photo_finder/src/models/index.dart';

class PhotosApi {
  const PhotosApi(
      {required String apiUrl, required String apiKey, required Client client, required FirebaseFirestore firestore})
      : _apiUrl = apiUrl,
        _apiKey = apiKey,
        _client = client,
        _firestore = firestore;

  final String _apiUrl;
  final String _apiKey;
  final Client _client;
  final FirebaseFirestore _firestore;

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

  Future<void> createComment(String uid, String photoId, String text) async {
    final DocumentReference<Map<String, dynamic>> ref = _firestore.collection('comments').doc();
    final Comment comment =
        Comment(id: ref.id, uid: uid, photoId: photoId, text: text, createdAt: DateTime.now().toUtc());
    ref.set(comment.json);
  }

  Future<List<Comment>> getComments(String photoId) async {
    final QuerySnapshot<Map<String, dynamic>> snapshot = await _firestore //
        .collection('comments')
        .where('photoId', isEqualTo: photoId)
        .get();

    return snapshot.docs //
        .map((QueryDocumentSnapshot<Map<String, dynamic>> doc) => Comment.fromJson(doc.data()))
        .toList();
  }
}
