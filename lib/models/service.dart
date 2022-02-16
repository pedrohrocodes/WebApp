import 'package:flutter/material.dart';

class Service {
  final int id;
  final String title, image;
  final Color color;

  Service({this.id, this.title, this.image, this.color});
}

List<Service> services = [
  Service(
      id: 1,
      title: "Sites",
      image: "assets/images/desktop.png",
      color: Colors.white),
  Service(
      id: 2,
      title: "Aplicativos",
      image: "assets/images/graphic.png",
      color: Colors.white),
  Service(
      id: 3,
      title: "Cursos",
      image: "assets/images/ui.png",
      color: Colors.white),
  Service(
      id: 4,
      title: "Treinamentos",
      image: "assets/images/Intreaction_design.png",
      color: Colors.white),
];
