import 'package:flutter/material.dart';
import 'package:flutter_2nd_app/pages/widgets/themes.dart';

import '../models/catalog.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key, required this.product});

  final Item product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      bottomNavigationBar: ButtonBar(
          alignment: MainAxisAlignment.spaceAround,
          buttonPadding: EdgeInsets.zero,
          children: [
            Text(
              "\$${product.price}",
              style: TextStyle(fontWeight: FontWeight.w800, fontSize: 25),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: ElevatedButton(
                onPressed: () => {},
                child: Text("Add To Cart"),
              ),
            )
          ]),
      body: SafeArea(
        bottom: true,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(children: [
            Hero(tag: product.id, child: Image.network(product.image)),
            Container(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Text(
                    product.title,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                    textScaleFactor: 2.0,
                  ),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
