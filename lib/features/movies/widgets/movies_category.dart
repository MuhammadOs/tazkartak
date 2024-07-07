import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';
import '../../../core/constants/constants.dart';
import 'categories_bar.dart';

class MoviesCategories extends StatelessWidget {
  const MoviesCategories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Category',
              style: titleSecound,
            ),
            Row(
              children: [
                Text(
                  'See All',
                  style: TextStyle(
                    color: AppColors.principalColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 10),
                Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: AppColors.principalColor,
                  size: 12,
                )
              ],
            ),
          ],
        ),
        SizedBox(height: 15),
        CategoriesBar(),
      ],
    );
  }
}
