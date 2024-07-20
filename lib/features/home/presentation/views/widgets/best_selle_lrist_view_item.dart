import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.bookDetailsView);
      },
      child: Row(
        children: [
          const SizedBox(
              height: 125,
              child: CustomBookItem(
                imageUrl:
                    "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcR7IcZHkFtiEEEF20_gIMTSFWLqJyD70W4TQ2r1Gf71IKVn1bRb",
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
                  child: Text("Harry Potter and the Goblet of Fire",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.textStyle20
                          .copyWith(fontFamily: kGtSectraFine)),
                ),
                const SizedBox(height: 3),
                const Text("J.K. Rowling", style: Styles.textStyle14),
                Row(
                  children: [
                    Text("19.99 \$",
                        style: Styles.textStyle20
                            .copyWith(fontWeight: FontWeight.bold)),
                    const Spacer(),
                    const BookRating(),
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
