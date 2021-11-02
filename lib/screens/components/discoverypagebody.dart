import 'package:flutter/material.dart';
import 'package:myfirstfirstapp/constants.dart';
import 'package:myfirstfirstapp/screens/components/categories.dart';

class DiscoveryPageBody extends StatelessWidget {
  const DiscoveryPageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
        child: Text("Categories",
            style: Theme.of(context)
                .textTheme
                .headline5!
                .copyWith(fontWeight: FontWeight.bold)),
      ),
      Categories(),
    ]);
  }
}

