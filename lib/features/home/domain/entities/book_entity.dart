class BookEntity {
  final String name;
  final String image;
  final num price;
  final num rating;
  final String autherName;
  final String bookId;
  BookEntity({
    required this.autherName,
    required this.bookId,
    required this.name,
    required this.image,
    required this.price,
    required this.rating,
  });
}
