import 'package:flutter/material.dart';
import 'package:flutter_exercises/models/meal.dart';

import './models/category.dart';

const DUMMY_CATEGORIES = const [
  Category(
    id: 'c1',
    title: 'Italian',
    color: Colors.purple,
  ),
  Category(
    id: 'c2',
    title: 'Quick & Easy',
    color: Colors.red,
  ),
  Category(
    id: 'c3',
    title: 'Hamburgers',
    color: Colors.orange,
  ),
  Category(
    id: 'c4',
    title: 'German',
    color: Colors.amber,
  ),
  Category(
    id: 'c5',
    title: 'Light & Lovely',
    color: Colors.blue,
  ),
  Category(
    id: 'c6',
    title: 'Exotic',
    color: Colors.green,
  ),
  Category(
    id: 'c7',
    title: 'Breakfast',
    color: Colors.lightBlue,
  ),
  Category(
    id: 'c8',
    title: 'Asian',
    color: Colors.lightGreen,
  ),
  Category(
    id: 'c9',
    title: 'French',
    color: Colors.pink,
  ),
  Category(
    id: 'c10',
    title: 'Summer',
    color: Colors.teal,
  ),
];

const DUMMY_MEALS = const [
  Meal(
    id: 'm1',
    categories: [
      'c1',
      'c2',
    ],
    title: 'Spaghetti with Tomato Sauce',
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/commons/1/15/Recipe_logo.jpeg',
    duration: 20,
    ingredients: [
      'Tomato Sauce',
      'Spaghetti',
      '1 Tablespoon Olive Oil',
      '1 Clove Garlic',
    ],
    steps: [
      'Step 1: In a large pot of lightly salted water, cook spaghetti pasta until al dente. Drain.',
      'Step 2: Heat oil in a skillet over medium heat. Cook and stir garlic in the hot oil until fragrant, about 30 seconds. Stir in tomato sauce and season with salt and pepper. Simmer sauce until heated through, about 5 minutes.',
      'Step 3: Toss cooked spaghetti with sauce to serve.',
    ],
    isGlutenFree: true,
    isLactoseFree: true,
    isVegan: true,
    isVegetarian: true,
  ),
  Meal(
    id: 'm2',
    categories: [
      'c2',
    ],
    title: 'Toast Hawaii',
    affordability: Affordability.Pricey,
    complexity: Complexity.Simple,
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/commons/1/15/Recipe_logo.jpeg',
    duration: 10,
    ingredients: [
      'Butter',
      'Honey',
      'Ham',
      'Pineapple',
      'Bread',
    ],
    steps: [
      'Step 1: Spread butter on one side of each slice of bread.',
      'Step 2: Place bread, butter side down, on a baking sheet.',
      'Step 3: Bake in the preheated oven until the bread is lightly browned, 5 to 10 minutes.',
      'Step 4: Spread honey over the unbuttered side of 4 slices of bread. Top each with a slice of ham, then a slice of pineapple. Top with the remaining 4 slices of bread, honey-side up.',
      'Step 5: Heat a skillet over medium heat. Cook sandwiches in the hot skillet until the bread is toasted and the cheese is melted, about 2 minutes per side.',
    ],
    isGlutenFree: false,
    isLactoseFree: false,
    isVegan: false,
    isVegetarian: false,
  ),
  Meal(
    id: 'm3',
    categories: [
      'c3',
    ],
    title: 'Classic Hamburger',
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/commons/1/15/Recipe_logo.jpeg',
    duration: 45,
    ingredients: [
      '300g Cattle Mince',
      '1 Onion',
      '2 Garlic Cloves',
      '1 Egg',
      '1/2 cup Breadcrumbs',
      '1/2 cup Ketchup',
      '1/2 cup Mustard',
      '1/2 cup Mayonnaise',
      '1/2 cup Pickles',
      '1/2 cup Lettuce',
      '1/2 cup Tomato',
      '1/2 cup Cheese',
      '1/2 cup Bacon',
      '1/2 cup Buns',
    ],
    steps: [
      'Step 1: In a large bowl, mix together the mince, onion, garlic, egg, and breadcrumbs. Season with salt and pepper, to taste. Shape into 4 patties.',
      'Step 2: In a large skillet over medium heat, cook the patties until no longer pink in the center, about 5 minutes per side. An instant-read thermometer inserted into the center should read at least 160 degrees F (70 degrees C).',
      'Step 3: Spread ketchup on the bottom buns, and mayonnaise on the top buns. Place lettuce, tomato, cheese, bacon, and pickles on the bottom buns. Top with the cooked patties, and cover with the top buns.',
    ],
    isGlutenFree: false,
    isLactoseFree: false,
    isVegan: false,
    isVegetarian: false,
  ),
  Meal(
    id: 'm4',
    categories: [
      'c4',
    ],
    title: 'Wiener Schnitzel',
    affordability: Affordability.Luxurious,
    complexity: Complexity.Challenging,
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/commons/1/15/Recipe_logo.jpeg',
    duration: 60,
    ingredients: [
      '4 Veal Cutlets',
      '4 Eggs',
      '200g Bread Crumbs',
      '100g Flour',
      '300ml Butter',
      'Lemon Slices',
      'Salt',
      'Pepper',
      'Parsley',
    ],
    steps: [
      'Step 1: Place the flour on a plate. Season with salt and pepper. Place the eggs in a bowl and beat with a fork. Place the bread crumbs on a plate.',
      'Step 2: Dredge the veal cutlets in the flour to coat, then dip into the egg, and coat with bread crumbs.',
      'Step 3: Heat 2 tablespoons butter in a large skillet over medium heat. Cook the veal cutlets in the hot butter until browned on the bottom, about 2 minutes. Turn and cook until the other side is browned, about 2 minutes more. Transfer to a plate and keep warm.',
      'Step 4: Melt the remaining butter in the skillet. Add the lemon slices and cook until browned, about 1 minute per side. Season with salt and pepper.',
      'Step 5: Serve the veal cutlets with lemon slices and sprinkle with chopped parsley.',
    ],
    isGlutenFree: true,
    isLactoseFree: true,
    isVegan: false,
    isVegetarian: false,
  ),
  Meal(
    id: 'm5',
    categories: [
      'c2',
      'c5',
      'c10',
    ],
    title: 'Salad with Smoked Salmon',
    affordability: Affordability.Luxurious,
    complexity: Complexity.Simple,
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/commons/1/15/Recipe_logo.jpeg',
    duration: 15,
    ingredients: [
      'Arugula',
      'Lemon',
      'Olive Oil',
      'Salt',
      'Pepper',
      'Smoked Salmon',
      'Croutons',
    ],
    steps: [
      'Step 1: In a large bowl, toss together the arugula, lemon juice, olive oil, salt, and pepper. Arrange on plates and top with smoked salmon and croutons.',
    ],
    isGlutenFree: true,
    isLactoseFree: true,
    isVegan: true,
    isVegetarian: true,
  ),
];
