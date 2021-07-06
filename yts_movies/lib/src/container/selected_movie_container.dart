import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:yts_movies/src/models/app_state.dart';
import 'package:yts_movies/src/models/movie.dart';

class SelectedMovieContainer extends StatelessWidget {
  const SelectedMovieContainer({Key? key, required this.builder}) : super(key: key);

  final ViewModelBuilder<Movie> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, Movie>(
      builder: builder,
      converter: (Store<AppState> store) => store.state.movies.firstWhere((Movie movie) {
        return movie.id == store.state.selectedMovie;
      }),
    );
  }
}
