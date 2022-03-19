import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sell_my_things/thing_item.dart';
import 'package:sell_my_things/things_provider.dart';

class ThingsGrid extends StatelessWidget {
  const ThingsGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final things = Provider.of<ThingsProvider>(context).things;

    return GridView.builder(
      padding: const EdgeInsets.all(10),
      itemCount: things.length,
      itemBuilder: (ctx, i) {
        final thing = things[i];
        return ThingItem(thing);
      },
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
    );
  }
}
