import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sell_my_things/thing.dart';

class ThingItem extends StatelessWidget {
  final Thing thing;

  const ThingItem(this.thing, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        child: GestureDetector(
//          onTap: () {
//            Navigator.of(context).pushNamed(
//              ProductDetailScreen.routeName,
//              arguments: product.id,
//            );
//          },
          child: Hero(
            tag: thing.id,
            child: FadeInImage(
              placeholder:
                  const AssetImage('assets/images/product_placeholder.png'),
//              image: NetworkImage(thing.thumbUrl),
              image: AssetImage(thing.thumbUrl),
              fit: BoxFit.cover,
            ),
          ),
        ),
        footer: GridTileBar(
          backgroundColor: Colors.black87,
//          leading: Consumer<Thing>(
//            builder: (ctx, product, child) =>
//                IconButton(
//                  icon: Icon(Icons.favorite_border),
//                  onPressed: () {},
//                  color: Theme
//                      .of(context)
//                      .colorScheme
//                      .secondary,
//                ),
//          ),
          trailing: Text(
            NumberFormat.simpleCurrency(
              decimalDigits: 2,
              locale: 'pt_BR',
            ).format(thing.price),
            style: const TextStyle(color: Colors.white),
          ),
          subtitle: Text(thing.description),
          title: Column(
            children: [
              Text(
                thing.title,
                textAlign: TextAlign.center,
              ),
            ],
          ),
//          trailing: IconButton(
//            icon: const Icon(Icons.shopping_cart),
//            onPressed: () {},
//            color: Theme
//                .of(context)
//                .accentColor,
//          ),
        ),
      ),
    );
  }
}
