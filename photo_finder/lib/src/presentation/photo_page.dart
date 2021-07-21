import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:photo_finder/src/models/index.dart';
import 'package:redux/redux.dart';

class PhotoPage extends StatelessWidget {
  const PhotoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Store<AppState> store = StoreProvider.of<AppState>(context);
    final Photo photo = store.state.photos[store.state.selectedPhoto!];
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        centerTitle: true,
        title: Text(
          photo.id,
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(8.0),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.width * 1.44,
                child: Material(
                  elevation: 5.0,
                  borderRadius: BorderRadius.circular(10.0),
                  clipBehavior: Clip.hardEdge,
                  child: Image.network(
                    photo.urls.regular,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Material(
                  elevation: 5.0,
                  borderRadius: BorderRadius.circular(10.0),
                  clipBehavior: Clip.hardEdge,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        CircleAvatar(
                          foregroundImage: NetworkImage(photo.user.profileImage.large),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(
                            photo.user.name,
                            style: const TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Material(
                  elevation: 5.0,
                  borderRadius: BorderRadius.circular(10.0),
                  clipBehavior: Clip.hardEdge,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        const Icon(
                          Icons.favorite,
                          color: Colors.black,
                          size: 30.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(
                            '${photo.likes}',
                            style: const TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Material(
                  elevation: 5.0,
                  borderRadius: BorderRadius.circular(10.0),
                  clipBehavior: Clip.hardEdge,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      photo.description != null ? photo.description! : 'Photo of a Dog',
                      style: const TextStyle(
                        fontSize: 20.0,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
