import 'package:flutter/material.dart';
import 'package:recipe_app/screens/moreDetails.dart';

class SingleMeal extends StatelessWidget {
  const SingleMeal(
      {super.key,
      required this.name,
      required this.imageUrl,
      required this.recipe});

  final String name;
  final String imageUrl;
  final String recipe;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      padding: const EdgeInsets.all(7),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: double.infinity,
            height: 120,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                fit: BoxFit.cover,
                imageUrl,
              ),
            ),
          ),
          Text(
            name,
            style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (ctx) => MoreDetailsScreen(
                      mealName: name,
                      mealImageUrl: imageUrl,
                      mealReicpe: recipe)));
            },
            style: ElevatedButton.styleFrom(
              // padding: EdgeInsets.all(0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              fixedSize: const Size.fromWidth(double.maxFinite),
              backgroundColor: const Color.fromARGB(255, 255, 215, 97),
            ),
            child: const Text(
              "How to Make",
              style: TextStyle(fontSize: 13, color: Colors.black),
            ),
          )
        ],
      ),
    );
  }
}
