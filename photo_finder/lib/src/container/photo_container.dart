import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:photo_finder/src/models/index.dart';
import 'package:redux/redux.dart';

class PhotoContainer extends StatelessWidget {
  const PhotoContainer({Key? key, required this.builder}) : super(key: key);

  final ViewModelBuilder<Photo> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, Photo>(
      builder: builder,
      converter: (Store<AppState> store) {
        return store.state.photos.firstWhere((Photo p) => p.id == store.state.selectedPhoto);
      },
    );
  }
}
