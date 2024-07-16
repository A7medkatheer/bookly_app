import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/similer_books_list_view.dart';
import 'package:flutter/material.dart';

class SimilerBooksSection extends StatelessWidget {
  const SimilerBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text("You can also like",
            style: Styles.textStyle16.copyWith(
              fontWeight: FontWeight.bold,
            )),
        const SizedBox(height: 16),
        const SimilerBooksListView(),
      ],
    );
  }
}
