import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:bookly/features/home/domain/use_case/featch_featured_book_use_case.dart';
import 'package:meta/meta.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.featchFeaturedBookUseCase)
      : super(FeaturedBooksInitial());
  final FeatchFeaturedBookUseCase featchFeaturedBookUseCase;

  Future<void> featchFeaturedBooks() async {
    emit(FeaturedBooksLoading());
    var result = await featchFeaturedBookUseCase.call();
    result.fold(
      (failure) => emit(FeaturedBooksFailure(failure.errorMessage)),
      (books) => emit(FeaturedBooksSuccess(books)),
    );
  }
}
