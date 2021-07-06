import 'package:flutter/material.dart';
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
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          widget._movie.title,
                          style: Theme.of(context).textTheme.headline4,
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              widget._movie.year == 0 ? 'Not available!' : '${widget._movie.year}',
                              style: const TextStyle(
                                fontSize: 16,
                                color: Colors.white60,
                              ),
                            ),
                            const SizedBox(
                              width: 16,
                            ),
                            Text(
                              widget._movie.runtime == 0 ? 'Not available!' : '${widget._movie.runtime} minutes',
                              style: const TextStyle(
                                fontSize: 16,
                                color: Colors.white60,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        widget._movie.rating == 0 ? 'Not available!' : '${widget._movie.rating / 2} / 5 ',
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      const Icon(
                        Icons.star,
                        color: Colors.amberAccent,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                widget._movie.summary,
                style: const TextStyle(
                  fontSize: 14,
                  letterSpacing: 1.4,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
