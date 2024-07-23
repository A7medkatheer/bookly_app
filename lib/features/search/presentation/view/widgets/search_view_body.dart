import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/search/presentation/view/widgets/custom_search_text_field.dart';
import 'package:bookly_app/features/search/presentation/view/widgets/search_result_list_view.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

    return Padding(
      padding: edgeInsets,
      child: Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomSearchTextField(),
            const SizedBox(height: 16),
            const Text("Search Results", style: Styles.textStyle18),
            Expanded(
              child: SearchResultListView(
                bookModel: bookModel,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
