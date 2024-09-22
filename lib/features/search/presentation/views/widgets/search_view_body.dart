import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_item.dart';
import 'package:bookly/features/search/presentation/views/widgets/custom_search_textfield.dart';
import 'package:bookly/features/search/presentation/views/widgets/search_reault_listView.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SafeArea(child: CustomSearchTextField()),
          SizedBox(height: 16),
          Text(
            "Search Results",
            style: Styles.textStyle18,
          ),
          SizedBox(height: 16),
          Expanded(child: SearchResultListView())
        ],
      ),
    );
  }
}
