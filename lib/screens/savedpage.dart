import 'package:flutter/material.dart';
import 'navigationdrawerwidget.dart';

class SavedPage extends StatelessWidget {
  const SavedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawerWidget(),
        appBar: AppBar(
          title: Text("Saved"),
          centerTitle: true,
          backgroundColor: Color(0xFFFEC8D8),
        )
    );
  }
}