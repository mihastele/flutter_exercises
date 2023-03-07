import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/providers/product.dart';
import 'package:shop_app/widgets/product_item.dart';

class PorductsGrid extends StatelessWidget {
  const PorductsGrid({
    super.key,
    required this.loadedProducts,
  });

  final List<Product> loadedProducts;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(10.0),
      itemCount: loadedProducts.length,
      // ChangeNotifierProvider.value() is alternative when we don't need to pass cotnext variable
      // This approach is suggested for single and list values since it recycles the objects
      itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
        value: loadedProducts[i],
        child: ProductItem(
            // id: loadedProducts[i].id,
            // title: loadedProducts[i].title,
            // imageUrl: loadedProducts[i].imageUrl,
            ),
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
    );
  }
}
