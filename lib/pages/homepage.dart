import 'package:flutter/material.dart';
import 'package:flutter_2nd_app/models/catalog.dart';
import 'package:flutter_2nd_app/pages/widgets/drawer.dart';
import 'package:flutter_2nd_app/pages/widgets/item.widget.dart';

class HomePage extends StatelessWidget {
  int days = 30;
  String myName = "vikash jha";
  // final dummyList=List.generate(5, (index) => CatalogModel.items[0]);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My E commerce"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: CatalogModel.items.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: CatalogModel.items[index],
            );
          },
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
