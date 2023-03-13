import 'package:flutter/material.dart';
import 'package:shop_app/providers/cart.dart';
import 'package:shop_app/providers/product.dart';
import 'package:shop_app/providers/products.dart';
import 'package:shop_app/screens/product_detail.dart';
import 'package:shop_app/screens/products_overview.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // create is better when instantiating a new object
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          // Good approach not to use value when instatiating a new object
          create: (ctx) => Products(),
        ),
        ChangeNotifierProvider(
          create: (_) => Cart(),
        ),
      ],
      child: MaterialApp(
        title: 'MyShop',
        theme: ThemeData(
            colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.purple)
                .copyWith(secondary: Colors.deepOrange),
            fontFamily: 'Lato'),
        home: ProductsOverViewScreen(),
        routes: {
          ProductDetailScreen.routeName: (ctx) => ProductDetailScreen(),
        },
      ),
    );
  }
}
