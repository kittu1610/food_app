import 'package:flutter/material.dart';
import 'package:food_app/pages/add_food_page.dart';
import 'package:food_app/pages/food_info_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Map> foodList = <Map>[];

  gotoAddFoodPage(BuildContext context) async {
    Map food = await Navigator.push(
      context,
      MaterialPageRoute<void>(
        builder: (BuildContext context) => const AddFoodPage(),
      ),
    ) as Map;
    setState(() {
      foodList.add(food);
    });
  }

  gotoFoodInfoPage(BuildContext context, int index) {
    Navigator.push(
      context,
      MaterialPageRoute<void>(
        builder: (BuildContext context) => FoodInfoPage(
          food: foodList.elementAt(index),
        ),
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
          : Column(
              children: List.generate(
                foodList.length,
                (index) => Card(
                  elevation: 5,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      title: Text(
                        "Food Name: ${foodList.elementAt(index)["foodName"]}",
                      ),
                      subtitle: Text(
                        "Food Price: ${foodList.elementAt(index)["foodPrice"]}",
                      ),
                      trailing: IconButton(
                        onPressed: () {
                          setState(() {
                            foodList.removeAt(index);
                          });
                        },
                        icon: const Icon(Icons.delete),
                      ),
                      onTap: () => gotoFoodInfoPage(context, index),
                    ),
                  ),
                ),
              ),
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => gotoAddFoodPage(context),
        child: const Icon(Icons.add),
      ),
    );
  }
}
