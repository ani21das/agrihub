class Item {
  final String id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String imageurl;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.imageurl});
}

final product = [
  Item(
    id: "Ani21",
    name: "Samsumg A50",
    desc: "Exynose 782",
    price: 18000,
    color: "#33505a",
    imageurl: 'www.google.com',
  ),
];
