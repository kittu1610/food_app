import 'package:flutter/material.dart';

class FoodInfoPage extends StatefulWidget {
  const FoodInfoPage({Key? key, required this.food}) : super(key: key);

  final Map food;

  @override
  State<FoodInfoPage> createState() => _FoodInfoPageState();
}

class _FoodInfoPageState extends State<FoodInfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Food name:${widget.food["foodName"]}"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Food Price: ${widget.food["foodPrice"]}"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Food Desc: ${widget.food["foodDesc"]}"),
            ],
          ),
        ],
      ),
    );
  }
}
