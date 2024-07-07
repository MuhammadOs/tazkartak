import 'package:flutter/material.dart';
import '../../core/constants/app_colors.dart';
import '../../core/constants/constants.dart';
import 'widgets/widgets.dart';

class MoviesPages extends StatelessWidget {
  const MoviesPages({Key? key}) : super(key: key);

  final double spacerHeight = 10;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final h = constraints.maxHeight;
        return Container(
          color: AppColors.primaryBackgroudColor,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
            child: Scaffold(
              resizeToAvoidBottomInset: false,
              appBar: const PreferredSize(
                preferredSize: Size.fromHeight(kToolbarHeight),
                child: MoviesAppBar(),
              ),
              backgroundColor: AppColors.primaryBackgroudColor,
              body: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: spacerHeight),
                  MoviesSearchBar(height: h * 0.075),
                  SizedBox(height: spacerHeight),
                  const MoviesCategories(),
                  SizedBox(height: spacerHeight),
                  const Text(
                    'Showing this month',
                    style: titleSecound,
                  ),
                  SizedBox(
                    height: h * 0.55,
                    child: const MoviesView(),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
