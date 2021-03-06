import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:yts_movies/src/actions/index.dart';
import 'package:yts_movies/src/container/is_loading_container.dart';
import 'package:yts_movies/src/container/movies_container.dart';
import 'package:yts_movies/src/models/index.dart';
import 'package:yts_movies/src/presentation/movie_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController _controller = ScrollController();

  @override
  void initState() {
    super.initState();
    _controller.addListener(_onScroll);
  }

  void _onScroll() {
    final Store<AppState> store = StoreProvider.of<AppState>(context);
    final bool isLoading = store.state.isLoading;
    final double max = _controller.position.maxScrollExtent;
    final double offset = _controller.offset;
    final double delta = max - offset;
    final double screenHeight = MediaQuery.of(context).size.height;
    final double threshold = screenHeight * 0.2;

    if (delta < threshold && !isLoading) {
      store.dispatch(const GetMovies());
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final String? error = StoreProvider.of<AppState>(context).state.error;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Movies'),
        backgroundColor: Colors.green,
        actions: <Widget>[
          IsLoadingContainer(builder: (BuildContext context, bool isLoading) {
            if (isLoading) {
              return const Center(
                child: CircularProgressIndicator(
                  color: Colors.white,
                ),
              );
            }
            return IconButton(
              onPressed: () {
                final Store<AppState> store = StoreProvider.of<AppState>(context);
                store.dispatch(const GetMovies());
              },
              icon: const Icon(Icons.movie),
            );
          }),
        ],
      ),
      body: error == null
          ? MoviesContainer(
              builder: (BuildContext context, List<Movie> movies) {
                return IsLoadingContainer(
                  builder: (BuildContext context, bool isLoading) {
                    if (isLoading && movies.isEmpty) {
                      return const Center(
                        child: CircularProgressIndicator(
                          color: Colors.white,
                        ),
                      );
                    }
                    return GridView.builder(
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 0.69,
                      ),
                      controller: _controller,
                      itemCount: movies.length,
                      physics: const AlwaysScrollableScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) {
                        final Movie movie = movies[index];
                        return InkWell(
                          child: Container(
                            padding: const EdgeInsets.all(10.0),
                            child: GridTile(
                              child: Image.network(
                                movie.mediumCoverImage,
                                fit: BoxFit.cover,
                              ),
                              footer: GridTileBar(
                                backgroundColor: Colors.black45,
                                title: Text(
                                  movie.title,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          onTap: () {
                            StoreProvider.of<AppState>(context).dispatch(SetSelectedMovie(movie.id));
                            Navigator.push(context, MaterialPageRoute<void>(builder: (BuildContext context) {
                              return const MoviePage();
                            }));
                          },
                        );
                      },
                    );
                  },
                );
              },
            )
          : Text(
              error,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
    );
  }
}
