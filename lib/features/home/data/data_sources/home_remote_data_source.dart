import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/home/domain/entities/book_entity.dart';
import 'package:bookly/core/utils/api_service.dart';

abstract class HomeRemoteDataSource {
  Future<List<BookEntity>> fetchFeaturedBooks();
  Future<List<BookEntity>> fetchNewestBooks();
}

class HomeRemoteDataSourceImpl extends HomeRemoteDataSource {
  final ApiService apiService;

  HomeRemoteDataSourceImpl(this.apiService);
  @override
  Future<List<BookEntity>> fetchFeaturedBooks() async {
    var result = await apiService.get(
        endPoint: 'volumes?Filtering=free-ebooks&q=subiect:programming&');
    List<BookEntity> books = getBooksList(result);

    return books;
  }

  List<BookEntity> getBooksList(Map<String, dynamic> result) {
    List<BookEntity> books = [];
    for (var element in result['items']) {
      books.add(BookModel.fromJson(element));
    }
    return books;
  }

  @override
  Future<List<BookEntity>> fetchNewestBooks() async {
    var result = await apiService.get(
        endPoint:
            'volumes?Filtering=free-ebooks&q=subiect:programming&Sorting=newest&');
    List<BookEntity> books = getBooksList(result);

    return books;
  }
}
