import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:fluttertube/api.dart';
import 'package:fluttertube/blocs/favorite_bloc.dart';
import 'package:fluttertube/blocs/videos_bloc.dart';
import 'package:fluttertube/screens/home.dart';

void main() {
  Api api = Api();
  api.search("eletro");
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      blocs: [Bloc((i) => VideosBloc()), Bloc((i) => FavoriteBloc())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'flutterTube',
        home: Home(),
      ),
    );
  }
}
