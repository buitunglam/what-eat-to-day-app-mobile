class Ingredient {
  final String id;
  final String imageUrl;
  final String name;
  final String quantity;
  final String unit;

  Ingredient({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.quantity,
    required this.unit,
  });

  @override
  String toString() {
    return '$quantity $unit of $name';
  }
}