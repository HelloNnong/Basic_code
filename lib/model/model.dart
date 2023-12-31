enum Category {
  arm,
  chest,
  head,
  leg,
  cheek,
  thigh,
}

class Product {
  const Product({
    required this.category,
    required this.id,
    required this.name,
  });

  final Category category;
  final String id;
  final String name;

  String get assetName => '$id.png';
  //String get assetPackage => 'assets/images/sym';

  @override
  String toString() => "$name (id=$id)";
}
