import 'package:flutter/material.dart';

import '../../../core/data/models/movie.dart';

class MovieCard extends StatelessWidget {
  const MovieCard({
    Key? key,
    required this.movie,
  }) : super(key: key);

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            image: DecorationImage(
                image: AssetImage('assets/images/' + movie.picture),
                fit: BoxFit.fill)),
      ),
    );
  }
}
