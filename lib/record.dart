class Records {
  final int amount;
  final String category;
  final String date;
  final String acountType;

  Records(this.amount, this.category, this.date, this.acountType);
}

List<Records> records = [
  Records(100, "Groceries", "Today", "Credit Card"),
  Records(700, "Cloth", "2023/10/23", "Credit Card"),
  Records(100, "Buaty", "2023/09/05", "Credit Card"),
];
