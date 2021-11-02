import 'package:flutter/material.dart';

import 'navigationdrawerwidget.dart';

class FavouritesPage extends StatelessWidget {
  const FavouritesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: NavigationDrawerWidget(),
        appBar: AppBar(
          title: Text("Favourites"),
          centerTitle: true,
          backgroundColor: Color(0xFFD291BC),
        )
    );
  }
}