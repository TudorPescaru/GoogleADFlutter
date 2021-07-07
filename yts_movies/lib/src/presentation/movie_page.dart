import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:yts_movies/src/models/app_state.dart';
import 'package:yts_movies/src/models/movie.dart';

class MoviePage extends StatelessWidget {
  const MoviePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Store<AppState> store = StoreProvider.of<AppState>(context);
    final Movie movie = store.state.movies[store.state.selectedMovie!];
    return Scaffold(
      appBar: AppBar(
        title: Text(movie.title),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(2.5),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.width * 1.44,
                child: Image.network(
                  movie.largeCoverImage,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(2.5),
                child: Text(
                  movie.title,
                  style: const TextStyle(
                    fontSize: 32,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(2.5),
                child: Text(
                  movie.year == 0 ? 'Not available!' : '${movie.year}',
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(2.5),
                child: Text(
                  movie.runtime == 0 ? 'Not available!' : '${movie.runtime} minutes',
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(2.5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      movie.rating == 0 ? 'Not available!' : '${movie.rating / 2} / 5 ',
                      style: const TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    const Icon(
                      Icons.star,
                      color: Colors.amberAccent,
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(2.5),
                child: Text(
                  movie.summary,
                  style: const TextStyle(
                    fontSize: 14,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
