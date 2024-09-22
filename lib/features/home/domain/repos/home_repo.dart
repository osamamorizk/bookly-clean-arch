import 'package:bookly/features/home/domain/entities/book_entity.dart';

abstract class HomeRepo {
  Future<List<BookEntity>> featchFeaturedBooks();
  Future<List<BookEntity>> featchNewstBooks();
}
