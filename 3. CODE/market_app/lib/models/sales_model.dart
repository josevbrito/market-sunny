class SaleItem {
  int productId;
  String productName;
  double unitPrice;
  int quantity;

  SaleItem({
    required this.productId,
    required this.productName,
    required this.unitPrice,
    required this.quantity,
  });

  Map<String, dynamic> toMap() {
    return {
      'productId' : productId,
      'productName' : productName,
      'unitPrice' : unitPrice,
      'quantity' : quantity,
    };
  }
}

class SaleModel {
  int id;
  DateTime date;
  List<SaleItem> items;
  double totalAmount;
  String paymentMode;

  SaleModel({
    required this.id,
    required this.date,
    required this.items,
    required this.totalAmount,
    required this.paymentMode,
  });

  SaleModel.fromMap(Map<String, dynamic> map):
    id = map['id'],
    date = DateTime.parse(map['date']),
    items = List<SaleItem>.from(map['items'].map((item) => SaleItem(
      productId: item['productId'],
      productName: item['productName'],
      unitPrice: item['unitPrice'],
      quantity: item['quantity'],
    ))),
    totalAmount = map['totalAmount'],
    paymentMode = map['paymentMode'];

  Map<String, dynamic> toMap() {
    return {
      'id' : id,
      'date': date.toIso8601String(),
      'items' : items.map((item) => item.toMap()).toList(),
      'totalAmount' : totalAmount,
      'paymentMode': paymentMode,
    };
  }
}
