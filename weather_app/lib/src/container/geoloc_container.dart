import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:weather_app/src/models/index.dart';

class GeolocContainer extends StatelessWidget {
  const GeolocContainer({Key? key, required this.builder}) : super(key: key);

  final ViewModelBuilder<Geoloc?> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, Geoloc?>(
      builder: builder,
      converter: (Store<AppState> store) {
        return store.state.geoloc;
      },
    );
  }
}
