import 'package:my_dart_project/Cart.dart';

class Checkout extends Cart {
  double deliveryFee = 10;

  double get tax => subtotal * 0.10;
  double get total => subtotal + tax + deliveryFee;

  void printInvoice() {
    print('Invoice :::');
    if (items.isEmpty) {
      print('No items in the cart.');
    } else {
      for (var i in items) {
        i.printItem();
      }
      print('Subtotal = ${subtotal.toStringAsFixed(2)}');
      print('Tax (10%) = ${tax.toStringAsFixed(2)}');
      print('Delivery Fee = ${deliveryFee.toStringAsFixed(2)}');
      print('Total = ${total.toStringAsFixed(2)}');
    }
  }
}
