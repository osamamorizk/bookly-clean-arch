import 'package:hive/hive.dart';
part 'book_entity.g.dart';

@HiveType(typeId: 0)
class BookEntity {
  @HiveField(0)
  final String name;
  @HiveField(1)
  final String image;
  @HiveField(2)
  final num price;
  @HiveField(3)
  final num rating;
  @HiveField(4)
  final String autherName;
  @HiveField(5)
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
