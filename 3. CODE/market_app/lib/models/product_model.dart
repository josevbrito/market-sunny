class ProductModel {
  int id;
  String name;
  String description;
  double price;
  String type;
  int quantity;

  ProductModel({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.type,
    required this.quantity,
  });

  ProductModel.fromMap(Map<String, dynamic> map):
    id = map['id'],
    name = map['name'],
    description = map['description'],
    price = map['price'], 
    type = map['type'],
    quantity = map['quantity'];
  
  Map<String, dynamic> toMap() {
    return {
      'id' : id,
      'name' : name,
      'description' : description,
      'price' : price,
      'type' : type,
      'quantity' : quantity,
    };
  }
}
