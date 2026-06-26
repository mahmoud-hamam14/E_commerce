import 'package:e_commerce/screens/home/widget/categories_section.dart';
import 'package:e_commerce/screens/home/widget/custom_appbar.dart';
import 'package:e_commerce/screens/home/widget/custom_text_field.dart';
import 'package:e_commerce/screens/home/widget/featured_section.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        top: true,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 8),
            //* AppBar
            const CustomAppbar(),

            const SizedBox(height: 20),
            //* TextField
            const CustomTextField(),

            const SizedBox(height: 20),

            //* Categories Section
            CategoriesSection(),

            const SizedBox(height: 20),

            //* Featured Section
            FeaturedSection(),
          ],
        ),
      ),
    );
  }
}
