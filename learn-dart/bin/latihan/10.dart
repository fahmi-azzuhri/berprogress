class Sale {
  int price;
  int quantity;
  Sale(this.price, this.quantity);

  int getTotal() {
    if (price >= 50000) {
      int discount = (price * quantity * 0.2).toInt();
      if (discount > 20000) {
        discount = 20000;
      }
      return price * quantity - discount;
    } else {
      return price * quantity;
    }
  }
}

void main() {
  Sale sale = Sale(50000, 1);
  print(sale.getTotal());
}
