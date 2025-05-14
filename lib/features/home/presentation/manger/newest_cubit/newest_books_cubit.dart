import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:bookly/features/home/domain/use_case/featch_newest_books_use_case.dart';
import 'package:meta/meta.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.featchNewestBookUseCase) : super(NewestBooksInitial());
  final FeatchNewestBooksUseCase featchNewestBookUseCase;

  Future<void> featchNewestBooks() async {
    emit(NewestBooksLoading());
    var result = await featchNewestBookUseCase.call();
    result.fold(
      (failure) => emit(NewestBooksFailure(failure.errorMessage)),
      (books) => emit(NewestBooksSuccess(books)),
    );
  }
}
