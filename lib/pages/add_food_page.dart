import 'package:flutter/material.dart';

class AddFoodPage extends StatefulWidget {
  const AddFoodPage({Key? key}) : super(key: key);

  @override
  State<AddFoodPage> createState() => _AddFoodPageState();
}

class _AddFoodPageState extends State<AddFoodPage> {
  Map food = {};

  TextEditingController foodName = TextEditingController();
  TextEditingController foodPrice = TextEditingController();
  TextEditingController foodImageUrl = TextEditingController();
  TextEditingController foodDesc = TextEditingController();

  addFood(BuildContext context) {
    food = {
      "foodName": foodName.text,
      "foodPrice": foodPrice.text,
      "foodImageUrl": foodImageUrl.text,
      "foodDesc": foodDesc.text
    };
    print(food);
    Navigator.pop(context, food);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Food Page"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: foodName,
              decoration: const InputDecoration(
                label: Text("Food Name"),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: foodPrice,
              decoration: const InputDecoration(
                label: Text("Food Price"),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: foodImageUrl,
              decoration: const InputDecoration(
                label: Text("Food Image Url"),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: foodDesc,
              decoration: const InputDecoration(
                label: Text("Food Description"),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () => addFood(context),
            child: const Text("Add Food"),
          )
        ],
      ),
    );
  }
}
