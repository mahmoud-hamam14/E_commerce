import 'package:e_commerce/screens/home/widget/featured_grid_view.dart';
import 'package:e_commerce/screens/home/widget/featured_header.dart';
import 'package:flutter/material.dart';

class FeaturedSection extends StatelessWidget {
  const FeaturedSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            //* Featured Header
            FeaturedHeader(),

            const SizedBox(height: 16),

            //* Featured Grid View
            Expanded(child: FeaturedGridView()),
          ],
        ),
      ),
    );
  }
}
