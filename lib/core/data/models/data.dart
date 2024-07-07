import 'package:flutter/material.dart';
import 'package:tazkartak/core/data/models/seat.dart';
import 'package:tazkartak/core/data/models/seat_label.dart';
import 'package:tazkartak/core/data/models/section_seat.dart';


import '../../constants/app_colors.dart';
import 'category.dart';
import 'cinema_location.dart';
import 'movie.dart';
import 'movie_date.dart';

final movieDates = MovieDate('Mar', 1,
    ['09:00', '10:30', '11:30', '13:00', '15:00', '17:30', '18:30', '20:30']);

final seatLabels = [
  SeatLabel('Available', Colors.grey),
  SeatLabel('Selected', AppColors.principalColor),
  SeatLabel('Reserved', Colors.white),
];

final cinemaLocation = [
  Location(
    name: "Cinema A1",
    ailes: 9,
    sections: [
      SeatSection(
        seats: List.generate(
          24,
          (index) => Seat(
            isBusy: [3, 9, 10, 17, 18].contains(index),
            isHidden: [0, 20].contains(index),
          ),
        ),
      ),
      SeatSection(
        seats: List.generate(
          24,
          (index) => Seat(
            isBusy: [6, 17, 18, 19, 20].contains(index),
            isHidden: [3, 23].contains(index),
          ),
        ),
      ),
    ],
  )
];

final categories = [
  Category(
    name: "Romance",
    icon: "😍",
  ),
  Category(
    name: "Comedy",
    icon: "😁",
  ),
  Category(
    name: "Horror",
    icon: "😱",
  ),
  Category(
    name: "Drama",
    icon: "😗",
  ),
  Category(
    name: "Suspense",
    icon: "😑",
  ),
  Category(
    name: "Historical",
    icon: "🤓",
  ),
];

final movies = [
  Movie(
    dates: movieDates,
    location: cinemaLocation[0],
    name: "Dolittle ",
    duractionMinutes: '1h 30m',
    gender: "Fiction",
    picture: "1.png",
    raiting: 8.7,
    synopsis:
        "Dr. John Dolittle lives in solitude behind the high walls of his lush manor in 19th-century England. His only companionship comes from an array of exotic animals that he speaks to on a daily basis. But when young Queen Victoria becomes gravely ill, the eccentric doctor and his furry friends embark on an epic adventure to a mythical island to find the cure",
  ),
  Movie(
    dates: movieDates,
    location: cinemaLocation[0],
    name: "Mulan",
    duractionMinutes: '1h 30m',
    gender: "Fiction",
    picture: "2.png",
    raiting: 9.7,
    synopsis:
        "Fearful that her ailing father will be drafted into the Chinese military, Mulan (Ming-Na Wen) takes his spot -- though, as a girl living under a patriarchal regime, she is technically unqualified to serve. She cleverly impersonates a man and goes off to train with fellow recruits. Accompanied by her dragon, Mushu (Eddie Murphy), she uses her smarts to help ward off a Hun invasion, falling in love with a dashing captain along the way.",
  ),
  Movie(
    dates: movieDates,
    location: cinemaLocation[0],
    name: "Black Widow",
    duractionMinutes: '1h 30m',
    gender: "Fiction",
    picture: "3.png",
    raiting: 7.7,
    synopsis:
        "At birth the Black Widow (aka Natasha Romanova) is given to the KGB, which grooms her to become its ultimate operative. When the U.S.S.R. breaks up, the government tries to kill her as the action moves to present-day New York, where she is a freelance operative.",
  ),

];
