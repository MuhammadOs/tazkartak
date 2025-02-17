import 'package:flutter/material.dart';

import '../../../core/data/models/data.dart';
import 'category_card.dart';

class CategoriesBar extends StatelessWidget {
  const CategoriesBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final w = constraints.maxWidth;
      final h = constraints.maxHeight;
      const double separateWidth = 25;
      const int showCategoriesNumber = 4;
      double sizeCard = (w - ((showCategoriesNumber - 1) * separateWidth)) /
          showCategoriesNumber;

      return SizedBox(
        height: 110,
        child: ListView.separated(
          separatorBuilder: (_, __) => const SizedBox(width: separateWidth),
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (_, index) {
            final category = categories[index];
            return CategoryCard(
              width: sizeCard,
              category: category,
            );
          },
        ),
      );
    });
  }
}
