import 'package:flutter/material.dart';
import 'package:shop_app/providers/products.dart';
import 'package:shop_app/widgets/products_grid.dart';
import 'package:provider/provider.dart';

enum FilterOptions { Favorites, All }

class ProductsOverViewScreen extends StatefulWidget {
  @override
  State<ProductsOverViewScreen> createState() => _ProductsOverViewScreenState();
}

class _ProductsOverViewScreenState extends State<ProductsOverViewScreen> {
  // const ProductsOverViewScreen({super.key});
  var _showOnlyFavorites = false;

  @override
  Widget build(BuildContext context) {
    // final productsContainer = Provider.of<Products>(context, listen: false);
    final productsData = Provider.of<Products>(context);
    final products = productsData.items;
    return Scaffold(
      appBar: AppBar(
        title: Text("My Shop"),
        actions: [
          PopupMenuButton(
            onSelected: (FilterOptions selectedValue) {
              if (selectedValue == FilterOptions.Favorites) {
                setState(() {
                  _showOnlyFavorites = true;
                });

                // _showOnlyFavorites = true;
                //productsData.showFavoritesOnly();
              } else {
                setState(() {
                  _showOnlyFavorites = false;
                });
                //_showOnlyFavorites = false;
                //roductsData.showAll();
              }
            },
            itemBuilder: (_) => [
              PopupMenuItem(
                child: Text("Only Favorites"),
                value: FilterOptions.Favorites,
              ),
              PopupMenuItem(
                child: Text("Show All"),
                value: FilterOptions.All,
              ),
            ],
          )
        ],
      ),
      body: PorductsGrid(showFavs: _showOnlyFavorites),
    );
  }
}
