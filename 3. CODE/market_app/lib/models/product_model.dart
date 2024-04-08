class ProductModel {
  int id;
  String name;
  double price;
  String type;
  int quantity;

  ProductModel({
    required this.id,
    required this.name,
    required this.price,
    required this.type,
    required this.quantity,
  });

  ProductModel.fromMap(Map<String, dynamic> map):
    id = map['id'],
    name = map['name'],
    price = map['price'], 
    type = map['type'],
    quantity = map['quantity'];
  
  Map<String, dynamic> toMap() {
    return {
      'id' : id,
      'name' : name,
      'price' : price,
      'type' : type,
      'quantity' : quantity,
    };
  }
}
