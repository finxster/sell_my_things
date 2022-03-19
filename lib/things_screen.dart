import 'package:flutter/material.dart';
import 'package:sell_my_things/things_grid.dart';

class ThingsScreen extends StatelessWidget {
  const ThingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Estamos de mudança \\o/ e precisamos vender esses itens:'),
      ),
      body: const ThingsGrid(),
    );
  }
}
