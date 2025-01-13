import 'package:flutter/material.dart';
import 'package:responsive_flutter_app/models/bar_graph_model.dart';
import 'package:responsive_flutter_app/models/graph_model.dart';

class BargraphData {
  final data = [
    BarGraphModel(
      label: "Calories Burned",
      color: Color.fromARGB(255, 170, 197, 16),
      graph: [
        GraphModel(x: 0, y: 8),
        GraphModel(x: 1, y: 15),
        GraphModel(x: 2, y: 17),
        GraphModel(x: 3, y: 10),
        GraphModel(x: 4, y: 20),
        GraphModel(x: 5, y: 22),
      ],
    ),
    BarGraphModel(
      label: "Protein Burned",
      color: Color.fromARGB(255, 27, 192, 76),
      graph: [
        GraphModel(x: 0, y: 12),
        GraphModel(x: 1, y: 1),
        GraphModel(x: 2, y: 15),
        GraphModel(x: 3, y: 8),
        GraphModel(x: 4, y: 18),
        GraphModel(x: 5, y: 20),
      ],
    ),
    BarGraphModel(
      label: "Carbohydrates Intake",
      color: Color.fromARGB(230, 240, 124, 123),
      graph: [
        GraphModel(x: 0, y: 20),
        GraphModel(x: 0, y: 4),
        GraphModel(x: 0, y: 10),
        GraphModel(x: 0, y: 2),
        GraphModel(x: 0, y: 15),
        GraphModel(x: 0, y: 8),
      ],
    ),
  ];
  final lable = ["M", "T", "W", "T", "F", "S"];
}
