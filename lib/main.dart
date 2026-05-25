import 'package:my_dart_project/Checkout.dart';
import 'package:my_dart_project/Item.dart';

void main() {
  Item pizza = Item(id: 1, name: "Pizza", price: 35.9, qty: 1);
  Item burger = Item(id: 2, name: "Burger", price: 25.5, qty: 1);
  Item juice = Item(id: 3, name: "Juice", price: 25.5, qty: 1);
  Item pizzaHot = Item(id: 4, name: "pizzaHot", price: 50.0, qty: 1);
 

  Checkout cart = Checkout();

  cart.addItem(pizza);
  cart.addItem(burger);
  cart.addItem(Item(id: 1, name: "Pizza", price: 35.9, qty: 1));
  cart.addItem(Item(id: 2, name: "Pizza", price: 35.9, qty: 1));

  cart.removeItem(1);

  cart.printCart();

  cart.printInvoice();
}
