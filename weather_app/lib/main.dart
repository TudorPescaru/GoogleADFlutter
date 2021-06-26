import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:ip_api/models/weather.dart';
import 'models/geoloc.dart';
import 'models/weather.dart';

void main() {
  runApp(const APIApp());
}

class APIApp extends StatelessWidget {
  const APIApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final String _apiKey = '{API key}';
  late Geoloc _geoloc;
  late Weather _weather;

  @override
  void initState() {
    super.initState();
    _getIP();
  }

  Future<void> _getIP() async {
    final Uri urlIP = Uri(scheme: 'https', host: 'api.ipify.org', queryParameters: <String, String>{'format': 'json'});
    final Response ipResponse = await get(urlIP);
    final Map<String, dynamic> ipBody = jsonDecode(ipResponse.body) as Map<String, dynamic>;
    final String ip = ipBody['ip'] as String;
    final Uri urlGeolocation = Uri(
      scheme: 'http',
      host: 'ip-api.com',
      pathSegments: <String>['json', ip],
    );
    final Response geoResponse = await get(urlGeolocation);
    final Map<String, dynamic> geoBody = jsonDecode(geoResponse.body) as Map<String, dynamic>;
    setState(() {
      _geoloc = Geoloc.fromJson(geoBody);
    });
    final Uri urlWeather = Uri(
      scheme: 'https',
      host: 'api.openweathermap.org',
      pathSegments: <String>['data', '2.5', 'onecall'],
      queryParameters: <String, String>{
        'lat': _geoloc.lat.toString(),
        'lon': _geoloc.lon.toString(),
        'exclude': 'minutely,hourly,daily,alerts',
        'units': 'metric',
        'appid': _apiKey,
      },
    );
    final Response weatherResponse = await get(urlWeather);
    final Map<String, dynamic> weatherBody = jsonDecode(weatherResponse.body) as Map<String, dynamic>;
    setState(() {
      _weather = Weather.fromJson(weatherBody);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: const Text('Weather App')),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20.0),
              child: Text(
                'Weather in ${_geoloc.city}, ${_geoloc.region}, ${_geoloc.country}',
                style: const TextStyle(
                  fontSize: 30.0,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20.0),
              child: Image.network('https://openweathermap.org/img/w/${_weather.current.weather[0].icon}.png'),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20.0),
              child: Text(
                '${_weather.current.temp}\u00b0C',
                style: const TextStyle(
                  fontSize: 30.0,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20.0),
              child: Text(
                _weather.current.weather[0].description.toUpperCase(),
                style: const TextStyle(
                  fontSize: 30.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
