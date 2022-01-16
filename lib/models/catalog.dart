
class CatalogModals
{
  static  List<Item> items =[];

// static  List<Item> items = [
// Item(id: 1, name: "Iphone", desc: "Apple 12 pro", price: 999, color: "#33505a", image: "https://cdn.dnaindia.com/sites/default/files/styles/full/public/2021/12/14/1009949-virat-kohli.jpg")
//
// ];
}


class Item
{
 final  int id;
 final String name;
 final  String desc;
 final   num price;
 final  String color;
 final  String image;

  Item({required this.id, required this.name, required this.desc, required this.price, required this.color, required this.image});

    factory  Item.fromJson(Map<String,dynamic> map){
      return  Item(
          id : map["id"],
          name : map["name"],
          desc : map["desc"],
          price : map["price"],
          color : map["color"],
          image : map["image"],
        );
      }

      toMap() => {
          "id" : id,
        "name" : name,
        "desc" : desc,
        "price" : price,
        "color" : color,
        "image" : image,
      };

}


