import 'package:flutter/material.dart';
import 'package:shop_app/providers/products.dart';
import 'package:shop_app/widgets/products_grid.dart';
import 'package:provider/provider.dart';

class ProductsOverViewScreen extends StatelessWidget {
  // const ProductsOverViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<Products>(context);
    final products = productsData.items;
    return Scaffold(
      appBar: AppBar(title: Text("My Shop")),
      body: PorductsGrid(loadedProducts: products),
    );
  }
}
