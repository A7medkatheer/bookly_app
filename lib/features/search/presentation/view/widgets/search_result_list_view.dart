import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/best_selle_lrist_view_item.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_error_widget.dart';
import 'package:bookly_app/features/search/presentation/manger/featured_search_book_cubit/search_book_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBookCubit, SearchBookState>(
      builder: (context, state) {
        if (state is SearchBookSuccess) {
          return ListView.builder(
            padding: const EdgeInsets.symmetric(vertical: 5),
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),

                child: BookListViewItem(bookModel: state.books[index]),
                // child: BookListViewItem(

                // ),
              );
            },
          );
        } else if (state is SearchBookFailure) {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else {
          return Center(
              child: Text(
            "Search for a book",
            style: Styles.textStyle20.copyWith(fontFamily: kGtSectraFine),
          ));
        }
      },
    );
  }
}
