import 'package:e_commerce/apis/models/product_model/product.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key, required this.product});

  final Product product;

  double get discountedPrice =>
      product.price! - (product.discountPercentage! * product.price!) / 100;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.06),
            blurRadius: 5,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Image
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                    '${product.thumbnail}',
                    height: MediaQuery.of(context).size.height * .2,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),

                /// Discount
                Positioned(
                  left: 0,
                  top: 0,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 5,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xffFFE8E6),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Text(
                      '${product.discountPercentage}%',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                /// Favorite
                Positioned(
                  right: 0,
                  top: 0,
                  child: CircleAvatar(
                    backgroundColor: Colors.grey.shade100,
                    child: Icon(Icons.favorite_border, color: Colors.grey),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 8),

            /// Brand
            Text(
              '${product.brand}',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
            ),

            const SizedBox(height: 8),

            /// Name
            Text(
              '${product.title}',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700),
            ),

            const SizedBox(height: 8),

            /// Rating
            Row(
              children: [
                Icon(Icons.star, color: Colors.amber, size: 20),

                SizedBox(width: 6),
                Text(
                  '${product.rating}',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                ),
              ],
            ),

            const SizedBox(height: 8),

            /// Price
            Row(
              children: [
                Text(
                  '\$${discountedPrice.toStringAsFixed(2)}',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                ),

                const SizedBox(width: 8),

                Text(
                  product.price!.toStringAsFixed(2),
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    decoration: TextDecoration.lineThrough,
                    decorationThickness: 2,
                    decorationColor: Colors.grey,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
