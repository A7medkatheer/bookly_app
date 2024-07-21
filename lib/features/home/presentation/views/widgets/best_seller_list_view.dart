// import 'package:bookly_app/features/home/presentation/views/widgets/best_selle_lrist_view_item.dart';
// import 'package:flutter/cupertino.dart';

// class BestSellerListView extends StatelessWidget {
//   const BestSellerListView({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       shrinkWrap: true,
//       physics: const NeverScrollableScrollPhysics(),
//       padding: EdgeInsets.zero,
//       itemCount: 15,
//       itemBuilder: (context, index) {
//         return const Padding(
//           padding: EdgeInsets.symmetric(vertical: 10),
//           child: BookListViewItem(),
//         );
//       },
//     );
//   }
// }
import 'package:bookly_app/features/home/presentation/manger/news_book_cubit/news_book_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/best_selle_lrist_view_item.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_error_widget.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsBookCubit, NewsBookState>(
      builder: (context, state) {
        if (state is NewsBookSuccess) {
          return ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: BookListViewItem(
                  bookModel: state.books[index],
                ),
              );
            },
          );
        } else if (state is NewsBookFailure) {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
