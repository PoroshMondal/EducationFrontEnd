import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

//ignore: must_be_immutable
class CustomRatingBar extends StatelessWidget {
  CustomRatingBar(this.rating, {super.key});
  double rating = 0;

  @override
  Widget build(BuildContext context) {
    return RatingBar.builder(
      initialRating: rating,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      ignoreGestures: true,
      itemSize: 20,
      itemPadding: const EdgeInsets.symmetric(horizontal: 2.0),
      itemBuilder: (context, _) => const Icon(
        Icons.star,
        color: Colors.amber,
        size: 40,
      ),
      onRatingUpdate: (rating) {
        print(rating);
      },
    );
  }
}
