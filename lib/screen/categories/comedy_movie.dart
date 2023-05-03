import 'package:flutter/material.dart';
import 'package:flutter_kinoKZ/models/bannerimage.dart';
import 'package:flutter_kinoKZ/models/bannerImage_model.dart';

class ComedyMovie extends StatelessWidget {
  const ComedyMovie({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    late final movies = [
      AfishaModel(
          id: 3,
          movieName: "Ауылбайский участковый",
          image:
              "https://kinopoiskapiunofficial.tech/images/posters/kp/5275394.jpg",
          rating: "9.2",
          ageRestriction: "12",
          genreFilm: "комедия"),
      AfishaModel(
          id: 4,
          movieName: "Хотя бы кинода",
          image:
              "https://kinopoiskapiunofficial.tech/images/posters/kp/5275397.jpg",
          rating: "9.5",
          ageRestriction: "12",
          genreFilm: "комедия"),
      AfishaModel(
          id: 4,
          movieName: "Senbe",
          image:
              "https://kinopoiskapiunofficial.tech/images/posters/kp_small/5275433.jpg",
          rating: "9.5",
          ageRestriction: "12",
          genreFilm: "комедия"),
      AfishaModel(
          id: 4,
          movieName: "Ренфилд",
          image:
              "https://kinopoiskapiunofficial.tech/images/posters/kp_small/4703238.jpg",
          rating: "5.6",
          ageRestriction: "18",
          genreFilm: "комедия"),
    ];
    return GridView.builder(
      // padding: const EdgeInsets.only(left: 14, right: 14, top: 3),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.7,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 3,
          mainAxisExtent: 400),
      itemCount: movies.length,
      itemBuilder: (context, index) {
        final movie = movies[index];
        return BannerImage(
            rating: movie.rating,
            agePlus: movie.ageRestriction,
            image: Image.network(
              movie.image ?? " ",
              fit: BoxFit.cover,
              height: 250,
            ),
            port: movie.genreFilm,
            movieName: movie.movieName);
      },
    );
  }
}
