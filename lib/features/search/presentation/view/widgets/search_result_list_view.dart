import 'package:bookly_app/core/utils/colored_print/flutter_colored_print.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/best_selle_lrist_view_item.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_error_widget.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_loading_indicator.dart';
import 'package:bookly_app/features/search/presentation/manger/featured_search_book_cubit/search_book_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key, required this.bookModel});
  final BookModel bookModel;
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
                child: TextButton(
                  child: const Text("data"),
                  onPressed: () {
                    coloredPrint(success('✅  searchController value: $index'));
                  },
                ),
                // child: BookListViewItem(

                // ),
              );
            },
          );
        } else if (state is SearchBookFailure) {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
