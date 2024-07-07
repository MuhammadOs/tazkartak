import 'package:flutter/material.dart';

class MoviesAppBar extends StatelessWidget {
  const MoviesAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 40,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Tazkartak',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 18,
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: const CircleAvatar(
                child: Image(image: AssetImage("assets/images/perfilFoto.jpg")),
              ),
            )
          ],
        ),
      ],
    );
  }
}
