import 'package:flutter/material.dart';
import 'package:recipe_app/widgets/singleMeal.dart';

import 'addRicpe.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // this method adds a meal to our set of recipes... in our case DummyMeals list
  void addReicpe(String name, String imageUrl, String recipe) {
    if (name != "" && imageUrl != "" && recipe != "") {
      setState(() {
        DummyMeals.add(Meal(name: name, imageUrl: imageUrl, recipe: recipe));
      });
    }
  }

  // this is some dummy data
  final DummyMeals = [
    Meal(
      name: "Rorini Pasta",
      imageUrl: "https://cdn7.kiwilimon.com/recetaimagen/37404/47177.jpg",
      recipe:
          "Cook Ronini pasta until al dente, sauté garlic and red pepper flakes in olive oil, add cooked pasta, toss with grated Pecorino Romano cheese and fresh parsley, and season with salt and pepper for a simple and delicious Ronini pasta dish.",
    ),
    Meal(
      name: "Pizza",
      imageUrl:
          'https://www.foodandwine.com/thmb/3kzG4PWOAgZIIfZwMBLKqoTkaGQ=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/margherita-pizza-with-argula-and-prosciutto-FT-RECIPE0721-04368ec288a84d2e997573aca0001d98.jpg',
      recipe:
          "Preheat your oven to 475°F (245°C).Roll out pizza dough on a floured surface to your desired thickness.Spread pizza sauce, sprinkle mozzarella cheese, and add your favorite toppings (pepperoni, mushrooms, bell peppers, etc.).Bake for 12-15 minutes or until the crust is golden and cheese is bubbly.Remove from the oven, let it cool for a minute, then slice and enjoy!",
    ),
    Meal(
      name: "Shrimp",
      imageUrl:
          'https://www.easyanddelish.com/wp-content/uploads/2020/02/Honey-Garlic-Butter-Shrimp-Skillet-Recipe-pouring-sauce.jpg',
      recipe: "some recipe",
    ),
    Meal(
      name: "Rorini Pasta",
      imageUrl: "https://cdn7.kiwilimon.com/recetaimagen/37404/47177.jpg",
      recipe: "",
    ),
    Meal(
      name: "Pizza",
      imageUrl:
          'https://www.foodandwine.com/thmb/3kzG4PWOAgZIIfZwMBLKqoTkaGQ=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/margherita-pizza-with-argula-and-prosciutto-FT-RECIPE0721-04368ec288a84d2e997573aca0001d98.jpg',
      recipe:
          "Preheat your oven to 475°F (245°C).Roll out pizza dough on a floured surface to your desired thickness.Spread pizza sauce, sprinkle mozzarella cheese, and add your favorite toppings (pepperoni, mushrooms, bell peppers, etc.).Bake for 12-15 minutes or until the crust is golden and cheese is bubbly.Remove from the oven, let it cool for a minute, then slice and enjoy!",
    ),
    Meal(
      name: "Shrimp",
      imageUrl:
          'https://www.easyanddelish.com/wp-content/uploads/2020/02/Honey-Garlic-Butter-Shrimp-Skillet-Recipe-pouring-sauce.jpg',
      recipe: "some recipe",
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "My Recipes",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w200),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 252, 232, 201),
      body: GridView.builder(
        itemCount: DummyMeals.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: (205 / 250),
          crossAxisCount: 2,
        ),
        itemBuilder: (context, index) {
          return SingleMeal(
            name: DummyMeals[index].name,
            imageUrl: DummyMeals[index].imageUrl,
            recipe: DummyMeals[index].recipe,
          );
        },
      ),
      floatingActionButton: CircleAvatar(
        radius: 30,
        backgroundColor: const Color.fromARGB(255, 255, 215, 97),
        child: IconButton(
          icon: const Icon(Icons.add),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => AddRicpeScreen(
                  addRecipe: addReicpe,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class Meal {
  Meal({required this.name, required this.imageUrl, required this.recipe});

  final String name;
  final String imageUrl;
  final String recipe;
}
