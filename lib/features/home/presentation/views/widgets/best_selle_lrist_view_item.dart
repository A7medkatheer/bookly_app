import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.bookDetailsView);
      },
      child: Row(
        children: [
          SizedBox(
              height: 125,
              child: CustomBookItem(
                imageUrl: bookModel.volumeInfo.imageLinks.thumbnail,
                height: 2.7,
                circleSize: 8,
              )),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Text(bookModel.volumeInfo.title!,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.textStyle20
                          .copyWith(fontFamily: kGtSectraFine)),
                ),
                const SizedBox(height: 3),
                Text(
                  bookModel.volumeInfo.authors!.join(", "),
                  style: Styles.textStyle14,
                ),
                Row(
                  children: [
                    Text("Free",
                        style: Styles.textStyle20
                            .copyWith(fontWeight: FontWeight.bold)),
                    const Spacer(),
                    BookRating(
                      rating: bookModel.volumeInfo.averageRating?.toInt() ?? 0,
                      count: bookModel.volumeInfo.ratingsCount ?? 0,
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
