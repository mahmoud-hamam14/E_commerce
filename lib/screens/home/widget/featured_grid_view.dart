import 'package:dio/dio.dart';
import 'package:e_commerce/apis/models/product_model/product.dart';
import 'package:e_commerce/screens/home/views/product_details_screen.dart';
import 'package:e_commerce/screens/home/widget/product_card_grid_view.dart';
import 'package:flutter/material.dart';

class FeaturedGridView extends StatefulWidget {
  const FeaturedGridView({super.key});

  @override
  State<FeaturedGridView> createState() => _FeaturedGridViewState();
}

class _FeaturedGridViewState extends State<FeaturedGridView> {
  final List<Product> products = [];

  Future<void> getProduct() async {
    final dio = Dio();
    final response = await dio.get('https://dummyjson.com/products');

    for (var element in response.data['products']) {
      final product = Product.fromJson(element);
      products.add(product);
    }
    setState(() {});
  }

  @override
  initState() {
    super.initState();
    getProduct();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ProductDetailsScreen()),
        );
      },
      child: ProductCardGridView(products: products),
    );
  }
}
