import 'package:flutter/material.dart';

class Feedback {
  final String name, review, userPic;
  final int id;
  final Color color;

  Feedback({this.name, this.review, this.userPic, this.id, this.color});
}

List<Feedback> feedbacks = [
  Feedback(
      id: 1,
      name: "Pedro Oliveira",
      review:
          "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore mag aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
      userPic: "assets/images/people.png",
      color: Colors.white),
  Feedback(
      id: 2,
      name: "Felipe Silva",
      review:
          "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore mag aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
      userPic: "assets/images/people.png",
      color: Colors.white),
  Feedback(
      id: 3,
      name: "Gabriel Valença",
      review:
          "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore mag aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
      userPic: "assets/images/people.png",
      color: Colors.white),
];
