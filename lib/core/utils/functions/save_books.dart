import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:hive/hive.dart';

void saveBooks(List<BookEntity> books, String boxName) {
  var box = Hive.box(boxName);
  box.add(books);
}
