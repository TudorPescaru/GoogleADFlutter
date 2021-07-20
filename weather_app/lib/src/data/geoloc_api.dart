import 'dart:convert';

import 'package:http/http.dart';
import 'package:weather_app/src/models/index.dart';

class GeolocApi {
  GeolocApi({required String apiUrl, required Client client})
      : _apiUrl = apiUrl,
        _client = client;

  final String _apiUrl;
  final Client _client;

  Future<Geoloc> getGeoloc(Ip ip) async {
    final Uri uri = Uri.parse('$_apiUrl/json/${ip.ip}');
    final Response response = await _client.get(uri);

    if (response.statusCode >= 300) {
      throw StateError(response.body);
    }

    final Map<String, dynamic> body = jsonDecode(response.body) as Map<String, dynamic>;
    return Geoloc.fromJson(body);
  }
}
