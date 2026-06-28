import 'package:e_commerce/apis/models/product_model/product.dart';
import 'package:e_commerce/screens/home/widget/product_card.dart';
import 'package:flutter/material.dart';

class ProductCardGridView extends StatelessWidget {
  const ProductCardGridView({super.key, required this.products});

  final List<Product> products;

  @override

  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      itemCount: products.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        childAspectRatio: .48,
      ),
      itemBuilder: (context, index) {
        return ProductCard(product: products[index]);
      },
    );
  }
}
