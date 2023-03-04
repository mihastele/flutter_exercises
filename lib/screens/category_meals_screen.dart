import 'package:flutter/material.dart';
import 'package:flutter_exercises/models/meal.dart';
import 'package:flutter_exercises/widgets/meal_item.dart';

import '../dummy_data.dart';

class CategoryMeals extends StatefulWidget {
  static const routeName = '/category-meals';

  @override
  State<CategoryMeals> createState() => _CategoryMealsState();
}

class _CategoryMealsState extends State<CategoryMeals> {
  String? categoryTitle;
  List<Meal> categoryMeals = [];
  bool _loadedInitData = false;

  @override
  void initState() {
    super.initState();
    // moved the code to didChangDependencies since context not available in initState
  }

  void _removeMeal(String mealId) {
    setState(() {
      categoryMeals.removeWhere((meal) => meal.id == mealId);
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    if (!_loadedInitData) {
      final routeArgs =
          ModalRoute.of(context)?.settings.arguments as Map<String, String>;
      categoryTitle = routeArgs['title'];
      final categoryId = routeArgs['id'];

      categoryMeals = DUMMY_MEALS.where((meal) {
        return meal.categories.contains(categoryId);
      }).toList();
    }

    _loadedInitData = true;
  }

  // final String categoryId;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle!),
      ),
      body: ListView.builder(
          itemBuilder: (ctx, index) {
            return MealItem(
                id: categoryMeals[index].id,
                title: categoryMeals[index].title,
                imageUrl: categoryMeals[index].imageUrl,
                duration: categoryMeals[index].duration,
                complexity: categoryMeals[index].complexity,
                affordability: categoryMeals[index].affordability,
                removeItem: _removeMeal);
          },
          itemCount: categoryMeals.length),
    );
  }
}
