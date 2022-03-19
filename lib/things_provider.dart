import 'package:flutter/material.dart';
import 'package:sell_my_things/thing.dart';

class ThingsProvider with ChangeNotifier {
  final List<Thing> _things = [
    Thing(
      id: 't1',
      title: 'Bateria eletrônica Siemes SD350',
      description: 'Bateria eletrônica usada poucas vezes',
      price: 2000.00,
      thumbUrl:
          'assets/images/IMG_9642.png',
      imagesUrl: [
        'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg'
      ],
    ),
    Thing(
      id: 't2',
      title: 'Liquidificador Kitchen Aid',
      description: 'Liquidificador Kitchen Aid',
      price: 800.00,
      thumbUrl:
      'assets/images/IMG_9562.png',
      imagesUrl: [
        'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg'
      ],
    ),
  ];

  List<Thing> get things {
    return [..._things];
  }

}
