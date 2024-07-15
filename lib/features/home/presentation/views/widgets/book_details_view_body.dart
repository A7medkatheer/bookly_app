import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_action.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/similer_books_list_view.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Padding(
        padding: edgeInsets,
        child: Column(
          children: [
            const CustomBookDetailsAppBar(),
            const SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.2),
              child: const CustomBookItem(),
            ),
            const SizedBox(height: 43),
            Text(
              "The Jungle Book",
              style: Styles.textStyle30.copyWith(
                  fontWeight: FontWeight.bold, fontFamily: kGtSectraFine),
            ),
            const SizedBox(height: 3),
            Opacity(
              opacity: 0.7,
              child: Text(
                "Rudyard Kipling",
                style: Styles.textStyle18.copyWith(
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w500,
                    fontFamily: kGtSectraFine),
              ),
            ),
            const BookRating(
              mainAxisAlignment: MainAxisAlignment.center,
            ),
            const SizedBox(height: 37),
            const BookAction(),
            const SizedBox(height: 50),
            Align(
              alignment: Alignment.centerLeft,
              child: Text("You can also like",
                  style: Styles.textStyle16.copyWith(
                    fontWeight: FontWeight.bold,
                  )),
            ),
            const SizedBox(height: 16),
            const SimilerBooksListView(),
          ],
        ),
      ),
    );
  }
}
