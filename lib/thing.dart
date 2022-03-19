class Thing {
  final String id;
  final String title;
  final String description;
  final double price;
  final String thumbUrl;
  List<String> imagesUrl;

  Thing(
      {required this.id,
      required this.title,
      required this.description,
      required this.price,
      required this.thumbUrl,
      this.imagesUrl = const []});
}
