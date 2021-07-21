import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:photo_finder/src/models/index.dart';
import 'package:redux/redux.dart';

class PhotosContainer extends StatelessWidget {
  const PhotosContainer({Key? key, required this.builder}) : super(key: key);

  final ViewModelBuilder<List<Photo>> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, List<Photo>>(
      builder: builder,
      converter: (Store<AppState> store) {
        return store.state.photos.asList();
      },
    );
  }
}
