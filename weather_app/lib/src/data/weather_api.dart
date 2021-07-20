import 'dart:convert';

import 'package:http/http.dart';
import 'package:weather_app/src/models/index.dart';

class WeatherApi {
  WeatherApi({required String apiUrl, required String apiKey, required Client client})
      : _apiUrl = apiUrl,
        _apiKey = apiKey,
        _client = client;

  final String _apiUrl;
  final String _apiKey;
  final Client _client;

  Future<Weather> getWeather(Geoloc geoloc) async {
    final Uri uri = Uri.parse(
        '$_apiUrl?lat=${geoloc.lat}&lon=${geoloc.lon}&exclude=minutely,hourly,daily,alerts&units=metric&appid=$_apiKey');
    final Response response = await _client.get(uri);

    if (response.statusCode >= 300) {
      throw StateError(response.body);
    }

    final Map<String, dynamic> body = jsonDecode(response.body) as Map<String, dynamic>;
    return Weather.fromJson(body);
  }
}
