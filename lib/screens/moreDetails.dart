import 'package:flutter/material.dart';

class MoreDetailsScreen extends StatelessWidget {
  const MoreDetailsScreen(
      {super.key,
      required this.mealName,
      required this.mealImageUrl,
      required this.mealReicpe});

  final String mealName;
  final String mealImageUrl;
  final String mealReicpe;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 252, 232, 201),
      body: Column(
        children: [
          Image.network(
            mealImageUrl,
            height: 400,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Text(
            mealName,
            style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: EdgeInsets.all(30),
            child: Text(
              textDirection: TextDirection.ltr,
              mealReicpe,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 255, 215, 97),
        child: Icon(Icons.arrow_back),
        onPressed: () => Navigator.of(context).pop(),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniStartFloat,
    );
  }
}
