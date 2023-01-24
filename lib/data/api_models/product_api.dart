class ProductApi {
  final String name;
  final double price;
  final int amount;
  final String partNumber;
  final String description;

  ProductApi.fromJson(
    this.name,
    this.price,
    this.amount,
    this.partNumber,
    this.description,
  );
}
