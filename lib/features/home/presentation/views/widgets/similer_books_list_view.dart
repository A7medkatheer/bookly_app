import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';

class SimilerBooksListView extends StatelessWidget {
  const SimilerBooksListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.15,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        // itemCount: 5,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(right: 8),
            child: CustomBookItem(
              imageUrl:
                  "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcR7IcZHkFtiEEEF20_gIMTSFWLqJyD70W4TQ2r1Gf71IKVn1bRb",
              height: 2,
              circleSize: 0,
            ),
          );
        },
      ),
    );
  }
}
