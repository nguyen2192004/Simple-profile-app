import 'package:flutter/material.dart';

class Film {
  String title;
  String director;
  List<String> actors;
  String releaseDate;
  String description;
  Image poster;
  List<String> genres;
  Film({
    required this.title,
    required this.director,
    required this.actors,
    required this.releaseDate,
    required this.description,
    required this.poster,
    required this.genres,
  });
}
