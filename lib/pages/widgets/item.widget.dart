import 'package:flutter/material.dart';
import 'package:flutter_2nd_app/models/catalog.dart';

class ItemWidget extends StatelessWidget {
  final Item item;
  const ItemWidget({required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        contentPadding: const EdgeInsets.all(8.0),
        leading: Image.network(item.image),
        title: Text(item.title),
        trailing: Text(
          "\$${item.price} ",
          textScaleFactor: 1.5,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
