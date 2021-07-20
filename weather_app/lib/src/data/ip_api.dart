import 'dart:convert';

import 'package:http/http.dart';
import 'package:weather_app/src/models/index.dart';

class IpApi {
  IpApi({required String apiUrl, required Client client})
      : _apiUrl = apiUrl,
        _client = client;

  final String _apiUrl;
  final Client _client;

  Future<Ip> getIp() async {
    final Uri uri = Uri.parse('$_apiUrl?format=json');
    final Response response = await _client.get(uri);

    if (response.statusCode >= 300) {
      throw StateError(response.body);
    }

    final Map<String, dynamic> body = jsonDecode(response.body) as Map<String, dynamic>;
    return Ip.fromJson(body);
  }
}
