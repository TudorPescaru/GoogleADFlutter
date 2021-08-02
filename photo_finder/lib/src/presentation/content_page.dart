import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:photo_finder/src/actions/index.dart';
import 'package:photo_finder/src/container/error_container.dart';
import 'package:photo_finder/src/container/is_loading_container.dart';
import 'package:photo_finder/src/container/content_container.dart';
import 'package:photo_finder/src/container/query_container.dart';
import 'package:photo_finder/src/models/index.dart';
import 'package:photo_finder/src/presentation/user_avatar.dart';
import 'package:redux/redux.dart';

class ContentPage extends StatefulWidget {
  const ContentPage({Key? key}) : super(key: key);

  @override
  _ContentPageState createState() => _ContentPageState();
}

class _ContentPageState extends State<ContentPage> {
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
      store.dispatch(const GetPhotos());
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return QueryContainer(
      builder: (BuildContext context, String query) {
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              'Photos of $query',
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            iconTheme: const IconThemeData(
              color: Colors.black,
            ),
            backgroundColor: Colors.white,
            leading: const UserAvatar(),
            actions: <Widget>[
              IsLoadingContainer(
                builder: (BuildContext context, bool isLoading) {
                  if (isLoading) {
                    return const Center(
                      child: CircularProgressIndicator(
                        color: Colors.black,
                      ),
                    );
                  }
                  return IconButton(
                    onPressed: () {
                      final Store<AppState> store = StoreProvider.of<AppState>(context);
                      store.dispatch(const GetPhotos());
                    },
                    icon: const Icon(
                      Icons.photo,
                      color: Colors.black,
                    ),
                  );
                },
              ),
            ],
          ),
          body: ErrorContainer(
            builder: (BuildContext context, Object? error) {
              if (error == null) {
                return IsLoadingContainer(
                  builder: (BuildContext context, bool isLoading) {
                    return ContentContainer(
                      builder: (BuildContext context, List<Photo> photos) {
                        if (isLoading && photos.isEmpty) {
                          return const Center(
                            child: CircularProgressIndicator(
                              color: Colors.white,
                            ),
                          );
                        }
                        if (photos.isEmpty) {
                          return const Center(
                            child: Text(
                              'No photos matching search!',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          );
                        }
                        return GridView.builder(
                          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 1,
                            childAspectRatio: 0.69,
                          ),
                          controller: _controller,
                          itemCount: photos.length,
                          physics: const AlwaysScrollableScrollPhysics(),
                          itemBuilder: (BuildContext context, int index) {
                            final Photo photo = photos[index];
                            return InkWell(
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Material(
                                  elevation: 5.0,
                                  borderRadius: BorderRadius.circular(10.0),
                                  clipBehavior: Clip.hardEdge,
                                  child: GridTile(
                                    child: Image.network(
                                      photo.urls.regular,
                                      fit: BoxFit.cover,
                                    ),
                                    footer: GridTileBar(
                                      backgroundColor: Colors.black45,
                                      title: Text(
                                        photo.description != null ? photo.description! : 'Photo of $query',
                                        textAlign: TextAlign.center,
                                        style: const TextStyle(
                                          fontSize: 16.0,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              onTap: () {
                                final Store<AppState> store = StoreProvider.of<AppState>(context);
                                store.dispatch(SetSelectedPhoto(index));
                                Navigator.pushNamed(context, '/photo');
                              },
                            );
                          },
                        );
                      },
                    );
                  },
                );
              }

              return Center(
                child: Text(
                  error.toString(),
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
