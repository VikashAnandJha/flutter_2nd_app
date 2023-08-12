import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_2nd_app/models/catalog.dart';
import 'package:flutter_2nd_app/pages/widgets/drawer.dart';
import 'package:flutter_2nd_app/pages/widgets/item.widget.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int days = 30;

  String myName = "vikash jha";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    loadData();
  }

  loadData() async {
    var data = await rootBundle.loadString("assets/files/catalog.json");
    var products = jsonDecode(data);

    CatalogModel.items =
        List.from(products).map<Item>((item) => Item.fromMap(item)).toList();
    setState(() {});

    // print(json[0]);
  }

  // final dummyList=List.generate(5, (index) => CatalogModel.items[0]);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My E commerce"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
            ? GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (context, index) {
                  final item = CatalogModel.items[index];

                  return Card(
                    child: GridTile(
                      child: Container(
                          padding: EdgeInsets.all(20),
                          margin: EdgeInsets.all(10),
                          child: Image.network(item.image)),
                      footer: Container(
                        child: Column(
                          children: [
                            Text(item.title.toString()),
                            Text("\$ ${item.price}"),
                          ],
                        ),
                      ),
                    ),
                  );
                },
                itemCount: CatalogModel.items.length,
              )
            : Center(
                child: CircularProgressIndicator(),
              ),
      ),
      drawer: MyDrawer(),
    );
  }
}
