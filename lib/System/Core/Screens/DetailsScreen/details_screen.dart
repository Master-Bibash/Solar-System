import 'package:flutter/material.dart';
import 'package:flutter_application_1/System/Core/models/PlanetsModels.dart';

class DetailsScrren extends StatefulWidget {
   DetailsScrren({super.key,required this.plant});
  Planet plant;

  @override
  State<DetailsScrren> createState() => _DetailsScrrenState();
}

class _DetailsScrrenState extends State<DetailsScrren> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset(widget.plant.ImageUrl)
        ],
      ),
    );
  }
}
