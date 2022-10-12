class Item {
  final String id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});
}

final products = [
  Item(
      id: "HT1",
      name: "iPhone 12 Pro",
      desc: "Apple Iphone 12th generation",
      price: 999,
      color: "#33505a",
      image: "https://m.media-amazon.com/images/I/71hIfcIPyxS._SL1500_.jpg")
];
