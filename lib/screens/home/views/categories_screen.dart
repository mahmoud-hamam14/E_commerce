import 'package:dio/dio.dart';
import 'package:e_commerce/apis/models/product_model/product.dart';
import 'package:e_commerce/screens/home/widget/custom_text_field.dart';
import 'package:e_commerce/screens/home/widget/product_card_grid_view.dart';
import 'package:flutter/material.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({super.key, required this.categoryName});

  final String categoryName;

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  final List<Product> products = [];

  Future<void> getProduct() async {
    final dio = Dio();
    final response = await dio.get(
      'https://dummyjson.com/products/category/${widget.categoryName}',
    );

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
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,

        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        title: Text(
          widget.categoryName,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_bag_outlined, color: Colors.black),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomTextField(),

          const SizedBox(height: 16),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              '${products.length} products',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
            ),
          ),

          const SizedBox(height: 16),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: ProductCardGridView(products: products),
            ),
          ),
        ],
      ),
    );
  }
}
