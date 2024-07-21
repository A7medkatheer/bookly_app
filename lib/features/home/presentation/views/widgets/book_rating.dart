import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating(
      {super.key,
      this.mainAxisAlignment = MainAxisAlignment.start,
      required this.rating,
      required this.count});
  final MainAxisAlignment mainAxisAlignment;
  final int rating;
  final int count;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(FontAwesomeIcons.solidStar,
            color: Color(0xFFFFDD4F), size: 16),
        const SizedBox(width: 5),
        Text(
          '$rating',
          style: Styles.textStyle16,
        ),
        const SizedBox(width: 5),
        Text(
          '($count)',
          style: Styles.textStyle16.copyWith(
            color: const Color(0xFF707070),
          ),
        ),
      ],
    );
  }
}
