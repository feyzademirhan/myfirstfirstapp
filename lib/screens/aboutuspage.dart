import 'package:flutter/material.dart';
import 'components/videoplayer.dart';
import 'navigationdrawerwidget.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: NavigationDrawerWidget(),
        appBar: AppBar(
          title: Text("About Us"),
          centerTitle: true,
          backgroundColor: Color(0xFF964D6F),
        ),
        body: Center(
          child: VideoPlayerScreen(url: "https://www.youtube.com/watch?v=utL8aIo9oSo"),
        ),
    );
  }
}