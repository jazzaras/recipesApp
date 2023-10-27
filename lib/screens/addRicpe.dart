import 'package:flutter/material.dart';

class AddRicpeScreen extends StatelessWidget {
  const AddRicpeScreen({super.key, required this.addRecipe});

  final Function(String, String, String) addRecipe;

  @override
  Widget build(BuildContext context) {
    // controllers to get the text fields content
    TextEditingController mealNameController = TextEditingController();
    TextEditingController mealUrlController = TextEditingController();
    TextEditingController mealReicpeController = TextEditingController();

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 239, 193),
      body: Container(
        padding: const EdgeInsets.all(50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: mealNameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Meal Name',
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: mealUrlController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                fillColor: Colors.white,
                labelText: 'Meal Url Image',
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: mealReicpeController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Meal Reicpe',
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  addRecipe(mealNameController.text, mealUrlController.text,
                      mealReicpeController.text);
                  Navigator.of(context).pop();
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  fixedSize: const Size.fromWidth(double.maxFinite),
                  backgroundColor: const Color.fromARGB(255, 255, 215, 97),
                ),
                child: const Text("add Recipe"))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 255, 215, 97),
        child: const Icon(Icons.arrow_back),
        onPressed: () => Navigator.of(context).pop(),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniStartFloat,
    );
  }
}
