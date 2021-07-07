import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:yts_movies/src/models/movie.dart';

class MoviePage extends StatefulWidget {
  const MoviePage({Key? key, required Movie movie})
      : _movie = movie,
        super(key: key);

  final Movie _movie;

  @override
  _MoviePageState createState() => _MoviePageState();
}

class _MoviePageState extends State<MoviePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget._movie.title),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.width * 1.33,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      widget._movie.largeCoverImage,
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(2.5),
                child: Text(
                  widget._movie.title,
                  style: const TextStyle(
                    fontSize: 32,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(2.5),
                child: Text(
                  widget._movie.year == 0 ? 'Not available!' : '${widget._movie.year}',
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(2.5),
                child: Text(
                  widget._movie.runtime == 0 ? 'Not available!' : '${widget._movie.runtime} minutes',
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
                      widget._movie.rating == 0 ? 'Not available!' : '${widget._movie.rating / 2} / 5 ',
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
                  widget._movie.summary,
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
