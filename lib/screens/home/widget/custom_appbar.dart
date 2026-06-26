import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Good morning 👋',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF6B7280),
                ),
              ),

              RichText(
                text: const TextSpan(
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                  children: [
                    TextSpan(
                      text: 'NOVA ',
                      style: TextStyle(color: Colors.blue),
                    ),
                    TextSpan(
                      text: 'Store',
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const Spacer(),

          IconButton(
            iconSize: 24,
            style: IconButton.styleFrom(backgroundColor: Color(0xFFF9FAFB)),

            onPressed: () {},
            icon: const Icon(
              Icons.notifications_none_outlined,
              color: Color(0xFF374151),
            ),
          ),

          SizedBox(width: 8),

          IconButton(
            iconSize: 24,
            style: IconButton.styleFrom(backgroundColor: Color(0xFFF9FAFB)),

            onPressed: () {},
            icon: const Icon(Icons.store_outlined, color: Color(0xFF374151)),
          ),

          SizedBox(width: 8),

          CircleAvatar(
            radius: 18,
            backgroundImage: AssetImage('assets/user8.jpg'),
          ),
        ],
      ),
    );
  }
}