
class CatalogModals
{
  static  final items = [
  Item(id: "Ranchi", name: "Iphone", desc: "Apple 12 pro", price: 999, color: "#33505a", image: "https://cdn.dnaindia.com/sites/default/files/styles/full/public/2021/12/14/1009949-virat-kohli.jpg")

  ];
}


class Item
{
  final String id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({required this.id, required this.name, required this.desc, required this.price, required this.color, required this.image});



}


