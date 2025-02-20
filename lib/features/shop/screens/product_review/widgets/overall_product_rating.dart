import 'package:ecommerce/features/shop/screens/product_review/widgets/rating_process_indicator.dart';
import 'package:flutter/material.dart';

class OverAllProductRating extends StatelessWidget {
  const OverAllProductRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: Text(
            '4.8',
            style: Theme.of(context).textTheme.displayLarge,
          ),
        ),
        const Expanded(
          flex: 7,
          child: Column(
            children: [
              RatingProcessIndicator(
                text: '5',
                value: 1,
              ),
              RatingProcessIndicator(
                text: '4',
                value: 0.8,
              ),
              RatingProcessIndicator(
                text: '3',
                value: 0.6,
              ),
              RatingProcessIndicator(
                text: '2',
                value: 0.4,
              ),
              RatingProcessIndicator(
                text: '1',
                value: 0.2,
              ),
            ],
          ),
        )
      ],
    );
  }
}