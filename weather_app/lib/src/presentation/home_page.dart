import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:weather_app/src/actions/index.dart';
import 'package:weather_app/src/container/geoloc_container.dart';
import 'package:weather_app/src/container/is_loading_container.dart';
import 'package:weather_app/src/container/weather_container.dart';
import 'package:weather_app/src/models/index.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(235, 110, 75, 1.0),
        centerTitle: true,
        title: const Text('Weather App'),
      ),
      backgroundColor: const Color.fromRGBO(72, 72, 74, 1.0),
      body: IsLoadingContainer(
        builder: (BuildContext context, bool isLoading) {
          return GeolocContainer(
            builder: (BuildContext context, Geoloc? geoloc) {
              return WeatherContainer(builder: (BuildContext context, Weather? weather) {
                if (isLoading || geoloc == null || weather == null) {
                  return const Center(
                    child: CircularProgressIndicator(
                      color: Colors.white,
                    ),
                  );
                }
                return Center(
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 20.0),
                        child: Text(
                          'Weather in ${geoloc.city}, ${geoloc.region}, ${geoloc.country}',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 30.0,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 20.0),
                        child: Image.network(
                          'https://openweathermap.org/img/w/${weather.current!.weather![0].icon}.png',
                          scale: 0.4,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 20.0),
                        child: Text(
                          '${weather.current!.temp}\u00b0C',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 30.0,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 20.0),
                        child: Text(
                          weather.current!.weather![0].description!.toUpperCase(),
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 30.0,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 20.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: const Color.fromRGBO(235, 110, 75, 1.0),
                            boxShadow: const <BoxShadow>[
                              BoxShadow(
                                color: Colors.black54,
                                blurRadius: 5,
                              )
                            ]),
                        child: IconButton(
                          onPressed: () {
                            final Store<AppState> store = StoreProvider.of<AppState>(context);
                            store.dispatch(const GetIp());
                          },
                          icon: const Icon(
                            Icons.refresh,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                );
              });
            },
          );
        },
      ),
    );
  }
}
