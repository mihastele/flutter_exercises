import 'package:flutter/material.dart';
import 'package:flutter_exercises/screens/categories_screen.dart';
import 'package:flutter_exercises/screens/category_meals_screen.dart';
import 'package:flutter_exercises/screens/meal_detail_screen.dart';
import 'package:flutter_exercises/screens/tabs_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Exercises',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.green)
            .copyWith(secondary: Colors.lightGreenAccent),
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyLarge: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
              bodyMedium: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
              displayLarge: TextStyle(
                fontSize: 20,
                fontFamily: 'RobotoCondensed',
                fontWeight: FontWeight.bold,
              ),
            ),
      ),
      // home: const CategoriesScreen(), // provided in root route
      initialRoute: '/', // default is '/'
      routes: {
        '/': (ctx) => const TabsScreen(),
        CategoryMeals.routeName: (ctx) => CategoryMeals(),
        MealDetailScreen.routeName: (ctx) => MealDetailScreen(),
      },
      onGenerateRoute: (settings) {
        // if route is not registered in routes
        // print(settings.arguments);

        // GOOD FOR HANDLING DYNAMIC ROUTES
        //if (settings.name == MealDetailScreen.routeName) {
        //  return MaterialPageRoute(builder: (ctx) => MealDetailScreen());
        //}

        return MaterialPageRoute(builder: (ctx) => TabsScreen());
      },
      //onUnknownRoute: (settings) {
      // final fallback 404
      // if route is not registered in routes and onGenerateRoute
      //  return MaterialPageRoute(builder: (ctx) => CategoriesScreen());
      //},
    );
  }
}
