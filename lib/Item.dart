class Item {
  int id;
  String name;
  double price;
  int qty;

  //Constractor :
  Item({
    required this.id,
    required this.name,
    required this.price,
    required this.qty,
  });

  void printItem() {
    double total = price * qty;
    print(
      '$id | $name | ${price.toStringAsFixed(2)} | $qty | ${total.toStringAsFixed(2)}',
    );
  }

  //Getter And Setter :
  get getId => this.id;

  set setId(id) => this.id = id;

  get getName => this.name;

  set setName(name) => this.name = name;

  get getPrice => this.price;

  set setPrice(price) => this.price = price;

  get getQuy => this.qty;

  set setQuy(quy) => this.qty = quy;

  //To String Methods :
  @override
  String toString() {
    return 'Item(id: $id, name: $name, price: $price, quy: $qty)';
  }
}
