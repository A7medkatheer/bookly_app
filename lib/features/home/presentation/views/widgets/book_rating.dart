import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating(
      {super.key, this.mainAxisAlignment = MainAxisAlignment.start});
  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(FontAwesomeIcons.solidStar,
            color: Color(0xFFFFDD4F), size: 16),
        const SizedBox(width: 5),
        const Text('4.5', style: Styles.textStyle16),
        const SizedBox(width: 5),
        Text(
          '(254)',
          style: Styles.textStyle16.copyWith(
            color: const Color(0xFF707070),
          ),
        ),
      ],
    );
  }
}
