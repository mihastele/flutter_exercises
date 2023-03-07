import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/providers/products.dart';

class ProductDetailScreen extends StatelessWidget {
  // const ProductDetailScreen({super.key});
  //final String title;
  //final double price;

  //ProductDetailScreen(this.title, this.price);

  static const routeName = '/product-detail';

  @override
  Widget build(BuildContext context) {
    final id = ModalRoute.of(context)!.settings.arguments as String;

    // Is a child of ChangeNotifierProvider
    // listen = false because we don't expect the product to change
    final loadedProduct =
        Provider.of<Products>(context, listen: false).findById(id);
    return Scaffold(
      appBar: AppBar(title: Text(loadedProduct.title)),
      body: Placeholder(),
    );
  }
}
