import 'package:flutter/material.dart';
import 'navigationdrawerwidget.dart';

class ProfilePage extends StatelessWidget {
final String name;
final String urlImage;

const ProfilePage( {
    Key? key,
  required this.name,
  required this.urlImage,
}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const NavigationDrawerWidget(),
      appBar: AppBar(
        title: Text(name),
        centerTitle: true,
        backgroundColor: const Color(0xFF957DaD),
      ),

    );
  }
}
