import 'package:flutter/material.dart';
import '../../../core/data/models/cinema_location.dart';
import 'widgets.dart';

class MovieCinema extends StatelessWidget {
  final Location cinema;

  const MovieCinema({
    Key? key,
    required this.cinema,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: cinema.sections
          .map((seatSection) => MovieSeatSection(seats: seatSection.seats))
          .toList(),
    );
  }
}
