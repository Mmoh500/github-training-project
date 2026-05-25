import 'package:my_dart_project/Item.dart';

class Cart {
  List<Item> items = [];

  //Add Item :
  void addItem(Item item) {
    bool found = false;
    for (var i in items) {
      if (i.id == item.id) {
        i.qty += item.qty;
        found = true;
        break;
      }
    }
    if (!found) {
      items.add(item);
    }
  }

  //Remove Item :
  void removeItem(int id) {
    for (var i = 0; i < items.length; i++) {
      if (items[i].id == id) {
        items[i].qty -= 1; 
        if (items[i].qty <= 0) {
          items.removeAt(i); 
        }
        break;
      }
    }
  }

  double get subtotal {
    double sum = 0;
    for (var i in items) {
      sum += i.price * i.qty;
    }
    return sum;
  }



  void printCart() {
    print('Cart Items :::');
    if (items.isEmpty) {
      print('Cart is empty.');
    } else {
      for (var i in items) {
        i.printItem();
      }
      print('Subtotal = ${subtotal}');
    }

  }

  void clearCart() {
    items.clear();
  }
  
}
