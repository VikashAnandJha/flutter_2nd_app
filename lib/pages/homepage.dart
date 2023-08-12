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
        title: Text("GrayMart"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
            ? GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,

                  crossAxisSpacing: 5, // Adjust the spacing between columns
                  mainAxisSpacing: 10, // Adjust the spacing between rows
                  childAspectRatio:
                      0.8, // Adjust the width-to-height ratio of each grid item
                ),
                itemBuilder: (context, index) {
                  final item = CatalogModel.items[index];
                  var title = item.title.toString().length > 20
                      ? item.title.toString().substring(0, 20)
                      : item.title;
                  return Card(
                    child: GridTile(
                      footer: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Text(
                              title,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                            ),
                            Text("\$ ${item.price}"),
                          ],
                        ),
                      ),
                      child: Container(
                        padding: EdgeInsets.all(0),
                        margin: EdgeInsets.all(0),
                        child: Column(
                          children: [
                            SizedBox(
                              child: Image.network(
                                item.image,

                                height: 180,

                                fit: BoxFit
                                    .cover, // Adjust the image fit as needed
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
                itemCount: CatalogModel.items.length,
              )
            : const Center(
                child: CircularProgressIndicator(),
              ),
      ),
      drawer: MyDrawer(),
    );
  }
}
