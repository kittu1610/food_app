import 'package:flutter/material.dart';
import 'package:food_app/pages/add_food_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Map> foodList = <Map>[];

  gotoAddFoodPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute<void>(
        builder: (BuildContext context) => const AddFoodPage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Foods"),
        backgroundColor: Colors.green,
      ),
      body: foodList.isEmpty
          ? const Center(
              child: Text(
                "No Food is Added.",
                style: TextStyle(fontSize: 24),
              ),
            )
          : const Text(""),
      floatingActionButton: FloatingActionButton(
        onPressed: () => gotoAddFoodPage(context),
        child: const Icon(Icons.add),
      ),
    );
  }
}
