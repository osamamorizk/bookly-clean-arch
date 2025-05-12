import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:bookly/features/home/domain/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class FetchNewestBooksUseCase {
  final HomeRepo homeRepo;

  FetchNewestBooksUseCase(this.homeRepo);

  Future<Either<Failure, List<BookEntity>>> call() {
    //here to write additional code if needed befor applay the fun impl//
    return homeRepo.featchNewstBooks();
  }
}
