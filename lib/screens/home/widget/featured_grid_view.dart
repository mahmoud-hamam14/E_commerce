import 'package:e_commerce/screens/home/models/product_card_model.dart';
import 'package:e_commerce/screens/home/views/product_details_screen.dart';
import 'package:e_commerce/screens/home/widget/product_card.dart';
import 'package:flutter/material.dart';

class FeaturedGridView extends StatelessWidget {
  FeaturedGridView({super.key});

  final List<ProductCardModel> products = [
    ProductCardModel(
      image: 'assets/product1.png',
      productName: 'Essence Mascara Lash Princess',
      brandName: 'ESSENCE',
      price: '\$8.94',
      oldPrice: '\$12.94',
      discount: '-10%',
      rating: '2.5',
    ),
    ProductCardModel(
      image: 'assets/product2.png',
      productName: 'Essence Mascara Lash Princess',
      brandName: 'ESSENCE',
      price: '\$8.94',
      oldPrice: '\$12.94',
      discount: '-10%',
      rating: '2.5',
    ),
    ProductCardModel(
      image: 'assets/product1.png',
      productName: 'Essence Mascara Lash Princess',
      brandName: 'ESSENCE',
      price: '\$8.94',
      oldPrice: '\$12.94',
      discount: '-10%',
      rating: '2.5',
    ),
    ProductCardModel(
      image: 'assets/product2.png',
      productName: 'Essence Mascara Lash Princess',
      brandName: 'ESSENCE',
      price: '\$8.94',
      oldPrice: '\$12.94',
      discount: '-10%',
      rating: '2.5',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ProductDetailsScreen()),
        );
      },
      child: GridView.builder(
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
      ),
    );
  }
}
