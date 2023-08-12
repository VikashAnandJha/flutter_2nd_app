class CatalogModel {
  static final items = [
    Item(
        id: 1,
        title: "Fjallraven - Foldsack No. 1 Backpack, Fits 15 Laptops",
        image: "https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg",
        price: 109.95)
  ];
}

class Item {
  final int id;
  final String title;
  final String image;
  final double price;

  Item(
      {required this.id,
      required this.title,
      required this.image,
      required this.price});
}
