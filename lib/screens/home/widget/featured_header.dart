import 'package:flutter/material.dart';

class FeaturedHeader extends StatelessWidget {
  const FeaturedHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Featured',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
        ),

        const Spacer(),

        Text(
          'see all',
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w700,
            color: Colors.blue,
          ),
        ),
      ],
    );
  }
}
