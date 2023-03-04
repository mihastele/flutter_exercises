import 'package:flutter/material.dart';
import 'package:flutter_exercises/models/meal.dart';

class FavoritesScreen extends StatelessWidget {
  final List<Meal> favoriteMeals;
  const FavoritesScreen(this.favoriteMeals);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('You have no favorites yet - start adding some!'),
    );
  }
}
