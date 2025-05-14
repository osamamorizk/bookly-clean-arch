import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/consts.dart';
import 'package:bookly/core/utils/functions/setup_service_locator.dart';
import 'package:bookly/core/utils/router_app.dart';
import 'package:bookly/features/home/data/repos/home_repo_impl.dart';
import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:bookly/features/home/domain/use_case/featch_featured_book_use_case.dart';
import 'package:bookly/features/home/domain/use_case/featch_newest_books_use_case.dart';
import 'package:bookly/features/home/presentation/manger/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly/features/home/presentation/manger/newest_cubit/newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox<BookEntity>(kFeaturedBooksBox);
  await Hive.openBox<BookEntity>(kNewestBooksBox);
  Hive.registerAdapter(BookEntityAdapter());
  setupServiceLocator();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBooksCubit(
            FeatchFeaturedBookUseCase(
              getIt.get<HomeRepoImpl>(),
            ),
          ),
        ),
        BlocProvider(
          create: (context) => NewestBooksCubit(
            FeatchNewestBooksUseCase(
              getIt.get<HomeRepoImpl>(),
            ),
          ),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: RouterApp.router,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
