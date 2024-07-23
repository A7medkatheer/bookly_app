import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/features/home/presentation/manger/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_error_widget.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/shimmer_similer_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SimilerBooksListView extends StatelessWidget {
  const SimilerBooksListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.15,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: state
                  .books.length, // Ensure this matches the actual list length
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: GestureDetector(
                    onTap: () {
                      GoRouter.of(context).pushReplacement(
                        AppRouter.bookDetailsView,
                        extra: state.books[index],
                      );
                    },
                    child: CustomBookItem(
                      imageUrl:
                          state.books[index].volumeInfo.imageLinks.thumbnail,
                      height: 2.8,
                      circleSize: 16,
                    ),
                  ),
                );
              },
            ),
          );
        } else if (state is SimilarBooksFailure) {
          return CustomErrorWidget(
            errMessage: state.errMessage,
          );
        } else {
          return const ShimmerSimilarListView( height: .15,);
        }
      },
    );
  }
}
